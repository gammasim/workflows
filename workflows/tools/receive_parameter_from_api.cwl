#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: receive_parameter_from_api
doc: |-
  Set a simulation model parameter through an API.
  The input is validated using a predefined
  description of format, data types, value ranges.
  No data processing or derivation steps follow this workflow.

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

stdout: receive_parameter_from_api.log
stderr: receive_parameter_from_api.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
