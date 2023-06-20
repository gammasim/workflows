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

outputs:

  - id: parameter_asserted
    type: File
    outputSource: receive_parameter_from_api/parameter_asserted

  - id: receive_data_db_success
    type: boolean
    outputSource: update_receive_data_to_database/db_success

  - id: validation_data_db_success
    type: boolean
    outputSource: update_validation_data_to_database/db_success

steps:

  - id: receive_data_from_api
    doc: |-
        Receive data through API.
        Assert data using provided schema.
    run: ./tools/receive_data_from_api.cwl
    in:
      data: input_data
      data_schema: schema_array_elements
    out:
      - input_data_asserted

  - id: update_receive_data_to_database
    doc: |-
        Write received data to corresponding database.
    run: ./tools/update_database.cwl
    in:
      data: receive_data_from_api/input_data_asserted
    out:
      - db_success

  - id: derive_array_elements_coordinates
    doc: |-
        Transform coordinates to system used
        by simulation system.
    run:
      ./tools/derive_array_elements_coordinates.cwl
    in:
      data: receive_data_from_api/input_data_asserted
    out:
      - model_parameter

  - id: receive_parameter_from_api
    doc: |-
        Ingest simulation model parameter(s).
        Assert using provided schema.
    run: ./tools/receive_parameter_from_api.cwl
    in:
      parameter: derive_array_elements_coordinates/model_parameter
      parameter_schema: schema_parameter
    out:
      - parameter_asserted

  - id: update_model_parameter_to_database
    doc: |-
        Write asserted and validated model parameter(s) to 
        simulation model database.
    run: ./tools/update_database.cwl
    in:
      data: receive_parameter_from_api/parameter_asserted
    out:
      - db_success
    when: $(self.validation.validation_success)

  - id: validation
    run: ./ValidateArrayElementCoordinates.cwl
    doc: |-
        Validation workflow for array element coordinates.
    in:
      model_parameter: receive_parameter_from_api/parameter_asserted
    out:
      - validation_success
      - validation_data

  - id: update_validation_data_to_database
    run: ./tools/update_database.cwl
    in:
      data: validation/validation_data
    out:
      - db_success
    when: $(self.validation.validation_success)

requirements:
  SubworkflowFeatureRequirement: {}
