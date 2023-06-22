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
# Missing: any data needed for validation

outputs:

    - id: validation_report
      doc: |-
        Report on validation processes.
      type: File
      outputSource: generate_validation_report/validation_report

steps:

    - id: validate_array_elements_coordinates
      doc: |-
        Validate array elements coordinates.
      run: ./tools/validate_array_elements_coordinates.cwl
      in:
          data: model_parameter
      out: [validation_data]

    - id: generate_validation_report
      doc: |-
        Generation validation report from the data produced
        by validation of array element coordinates.
      run: ./tools/generate_validation_report.cwl
      in:
        validate_array_elements_coordinates_data: validate_array_elements_coordinates/validation_data
      out: [validation_report]
