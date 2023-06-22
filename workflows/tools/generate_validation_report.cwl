#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: generate_validation_report
doc: |-
    Generate a validation report. This is a human and
    computer readable document or website, used for
    inspection of the validation process.

baseCommand:
  - echo

arguments:
  - "false"

inputs:

    - id: validate_array_elements_coordinates_data
      doc: |-
        Validation data from validate_array_elements_coordinates.
      type: File

    - id: validate_dummy_data
      doc: |-
        Validation data from validate_dummy.
      type: File

outputs:

    - id: validation_report
      doc: |-
        Validation report.
      type: File

stdout: output.txt
