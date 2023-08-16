#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: receive_data_from_api
doc: |-
  Receive data through an API to be used
  in a derivation or validation workflow. Input data is validated
  using a predefined description of format, data types, value ranges.
  All input data is enriched with metadata to ensure full reproducibility.

baseCommand:
  - echo

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

stdout: receive_data_from_api.log
stderr: receive_data_from_api.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
