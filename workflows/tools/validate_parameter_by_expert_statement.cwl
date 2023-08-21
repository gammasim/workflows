#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_parameter_by_expert_statement
doc: |-
  Receive a validation statement on simulation model parameters
  from an expert. This includes external experts (e.g.,
  calibration or telescope experts) and internal simulation
  pipeline experts.

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

stdout: validate_parameter_by_expert_statement.log
stderr: validate_parameter_by_expert_statement.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
