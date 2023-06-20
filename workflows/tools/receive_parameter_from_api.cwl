#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: receive_parameter_from_api
doc: |-
    Receive the value of a simulation model parameter through an API.
    The input is validated using a predefined description of format,
    data types, value ranges. No model parameter derivation steps
    follow this command line tool. 

baseCommand:
    - echo

inputs:
  parameter:
    doc: |-
        Parameter(s) provided through API.
    type: File
  parameter_schema:
    doc: |-
        Schema required to assert provided parameter(s).
    type: File
    default: "parameter_schema.yml"

outputs:
    parameter_asserted:
        type: File

# stdout are written to this file and preserved
stdout: output.txt

requirements:
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/gammasim-tools-prod:latest
    dockerOutputDirectory: /workdir/external
