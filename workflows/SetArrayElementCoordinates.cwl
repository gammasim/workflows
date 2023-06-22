#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetArrayElementCoordinates
doc: |-
  Transform array element coordinates into the coordinate
  system required by the simulation pipeline (i.e., CORSIKA system).

inputs:

  - id: input_data
    type: File
    doc: |-
      Coordinates of array elements in UTM system.

  - id: schema_array_elements
    type: File
    doc: |-
      Schema file for definition of array elements data.

  - id: schema_parameter
    type: File
    doc: |-
      Schema file for definition of simulation model data.

outputs: []

#  - id: parameter_asserted
#    type: File
#    outputSource: receive_parameter_from_api/parameter_asserted
#
#  - id: receive_data_db_success
#    type: boolean
#    outputSource: update_receive_data_to_database/db_success
#
#  - id: validation_data_db_success
#    type: boolean
#    outputSource: update_validation_data_to_database/db_success

steps:

  - id: ReceiveAndAssert
    doc: |-
        Receive and assert data.
    run: ./ReceiveAndAssert.cwl
    in:
      input: input_data
      schema: schema_array_elements
    out:
      - data_asserted
      - return_code

  - id: DeriveArrayElementCoordinates
    doc: |-
        Derive array element coordinates.
    run: ./DeriveArrayElementCoordinates.cwl
    in:
      input: ReceiveAndAssert/data_asserted
      schema_parameter: schema_parameter
    out:
      - parameter_derived
      - return_code

  - id: ValidateArrayElementCoordinates
    doc: |-
        Validate derived coordinates.
    run:
      ./ValidateArrayElementCoordinates.cwl
    in:
      model_parameter: DeriveArrayElementCoordinates/parameter_derived
    out:
      - validation_report
# TODO      - return_code

  - id: AcceptParameter
    doc: |-
        Accept and save parameter.
    run: ./AcceptParameter.cwl
    in:
      model_parameter:  DeriveArrayElementCoordinates/parameter_derived
      validation_report: ValidateArrayElementCoordinates/validation_report
    out:
      - acceptance_statement
#      - model_database_return_code

requirements:
  SubworkflowFeatureRequirement: {}
