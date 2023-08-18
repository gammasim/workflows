#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateReadout
doc: Validate readout (if applicable for high and low gain chain).

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_parameter_by_history
    run: tools/validate_parameter_by_history.cwl
    in:
      input: input
    out:
      - output
  - id: validate_readout_window_settings
    run: tools/validate_readout_window_settings.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
