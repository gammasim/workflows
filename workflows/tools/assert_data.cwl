#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: assert_data
doc: |-
    Assert data or model parameter(s) using a schema
    describing format, data types, units, and value ranges.
    DEVELOPERNOTE - Is this part of this tool - 
    Input data is enriched with metadata to ensure full reproducibility.

baseCommand:
    - echo

inputs:

    - id: input
      doc: |- 
        Input data or model parameter.
      type: File

    - id: schema
      doc: |-
        Schema describing the input data.
      type: File

outputs:

    - id: data_asserted
      type: File

    - id: return_code
      type: string

# stdout are written to this file and preserved
stdout: output.txt

requirements:
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/gammasim-tools-prod:latest
    dockerOutputDirectory: /workdir/external
