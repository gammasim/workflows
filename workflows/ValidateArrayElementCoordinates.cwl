#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateArrayElementCoordinates
doc: |-
  Plot and compare array element coordinates. Validate
  coordinate transformation from those used in
  observatory database to simulation systems.

inputs:

  - id: model_parameter
    type: File
    doc: |-
      Coordinates of array elements in CORSIKA system.

outputs:

  - id: validation_results
    doc: |-
      Plots of layouts with different array elements
      in both CORSIKA system. User for visual inspection.
    type: File
    outputSource: validate_array_elements_coordinates/validation_data

  - id: validation_success
    doc: |-
      Validation statement.
    type: boolean
    outputSource: review_validation/validation_success

steps:

  - id: validate_array_elements_coordinates
    doc: |-
        Validation workflow.
    run:
        ./tools/validate_array_elements_coordinates.cwl
    in:
        data: model_parameter
    out: 
        - validation_data

  - id: review_validation
    doc: |-
        Validation review.
    run: 
        ./tools/review_validation.cwl
    in: 
        validation_data: validate_array_elements_coordinates/validation_data
    out: 
        - validation_success

requirements:
  SubworkflowFeatureRequirement: {}
  InlineJavascriptRequirement: {}
