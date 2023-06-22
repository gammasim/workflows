#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateParameter
doc: |-
  Run a set of validation methods for the given
  simulation model parameter(s).

inputs:

# might be several model parameters listed in a file
    - id: model_parameter
      type: File
      doc: |-
        Model parameters to be validated.

# Missing: any data needed for validation

outputs:

    - id: validation_report
      doc: |-
        Report on validation processes.
      type: File
      outputSource:
          - generate_validation_report/validation_report

steps:

    - id: validate_array_elements_coordinates
      doc: |-
        Validate array elements coordinates.
      run: ./tools/validate_array_elements_coordinates.cwl
      in:
          data: model_parameter
      out: [validation_data]

    - id: validate_dummy
      doc: |-
        Dummy validation method.
      run: ./tools/validate_dummy.cwl
      in:
          data: model_parameter
      out: [validation_data]

    - id: generate_validation_report
      doc: |-
        Generation validation report from the data produced
        by all validation methods.
        DEVELOPERNOTE - explicit listing of all validation
        input data. Find a smarter solution later.
      run: ./tools/generate_validation_report.cwl
      in:
        validate_array_elements_coordinates_data: validate_array_elements_coordinates/validation_data
        validate_dummy_data: validate_dummy/validation_data
      out: [validation_report]
