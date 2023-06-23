#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetParameter
doc: |-
    Receive, assert, and validate new simulation model parameters.
    Update simulation model data base after passing all outlined steps.

inputs:

  - id: input_parameter
    type: File
    doc: |-
      Updated simulation model parameter(s)
      

  - id: schema_parameter
    type: File
    doc: |-
      Schema file for definition of simulation model parameter(s).

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
        Receive and assert input.
    run: ./ReceiveAndAssert.cwl
    in:
      input: input_parameter
      schema: schema_parameter
    out:
      - data_asserted
      - return_code

  - id: ValidateParameter
    doc: |-
        Validate simulation model parameter by execution
        one or several validation steps.
    run:
      ./ValidateParameter.cwl
    in:
      model_parameter: ReceiveAndAssert/data_asserted
    out:
      - validation_report
# TODO      - return_code

  - id: AcceptParameter
    doc: |-
        Accept and save parameter.
    run: ./AcceptParameter.cwl
    in:
      model_parameter:  ReceiveAndAssert/data_asserted
      validation_report: ValidateParameter/validation_report
    out:
      - acceptance_statement
#      - model_database_return_code

requirements:
  SubworkflowFeatureRequirement: {}
