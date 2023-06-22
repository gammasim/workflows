#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: assert_data
doc: |-
    Receive data through an API to be used in a derivation or
    validation workflow.  Input data is validated using a
    predefined description of format, data types, value ranges.
    All input data is enriched with metadata to ensure full
    reproducibility.

baseCommand:
    - echo

inputs:
  data:
    doc: |-
        Data file provided through API.
    type: File
  data_schema:
    doc: |-
        Schema required to assert provided data file.
    type: File

outputs:
    input_data_asserted:
        type: File

# stdout are written to this file and preserved
stdout: output.txt

requirements:
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/gammasim-tools-prod:latest
    dockerOutputDirectory: /workdir/external
