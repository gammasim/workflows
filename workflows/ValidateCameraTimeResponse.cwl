#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateCameraTimeResponse
doc: Validate camera time response.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_pulse_timing
    run: tools/validate_pulse_timing.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
