#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetParameterFromExternal
doc: |-
  Receive parameter update (e.g., by querying
  an external source like a configuration or calibration
  database) or by expert input (e.g., by a member of
  a telescope team or a simulation pipeline expert).

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: receive_parameter_from_api
    run: tools/receive_parameter_from_api.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
