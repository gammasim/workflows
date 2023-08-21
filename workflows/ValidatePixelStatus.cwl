#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidatePixelStatus
doc: Validate pixel on/off status (disabled or broken pixels / channels)

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_pixel_status
    run: tools/validate_pixel_status.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
