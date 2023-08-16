#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateArrayElementCoordinates
doc: |-
  Plot and compare array element coordinates. Validate
  coordinate transformation from those used in
  observatory database to simulation systems.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_array_elements_coordinates
    run: tools/validate_array_elements_coordinates.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
