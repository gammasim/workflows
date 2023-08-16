#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateCameraPlateScale
doc: Validate camera plate scale

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_plate_scale_using_stars
    run: tools/validate_plate_scale_using_stars.cwl
    in:
      input: input
    out:
      - output
  - id: validate_using_astrophysical_source_position
    run: tools/validate_using_astrophysical_source_position.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
