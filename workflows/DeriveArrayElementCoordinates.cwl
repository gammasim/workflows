#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: DeriveArrayElementCoordinates
doc: |-
    Derive array element coordinates and archive
    data generated in derivation process.

inputs:

  - id: input
    type: File
    doc: |-
        Input data.

#  - id: schema_input
#    type: File
#    doc: |-
#        Schema describing input data.

  - id: schema
    type: File
    doc: |-
        Schema describing model parameters.

outputs:

  - id: parameter_derived
    type: File
    outputSource: assert_model_parameter/model_parameter

  - id: logging_derive_array_elements_coordinates
    type: File
    outputSource: derive_array_elements_coordinates/derivation_data

  - id: logging_assert_model_parameter
    type: File
    outputSource: assert_model_parameter/assertion_data

steps:

#  - id: assert_input_data
#    doc: |-
#        Assert input data using a schema file.
#    run: ./tools/assert_data.cwl
#    in:
#        data: input
#        schema: schema_input

  - id: derive_array_elements_coordinates
    doc: |-
        Transform coordinates to system used
        by simulation system.
    run:
      ./tools/derive_array_elements_coordinates.cwl
    in:
      data: input
    out:
      - model_parameter
      - derivation_data

  - id: assert_model_parameter
    doc: |-
        Assert derived model parameter using a schema file.
    run: ./tools/assert_data.cwl
    in:
        data: derive_array_elements_coordinates/model_parameter
        schema: schema
    out:
        - model_parameter
        - assertion_data

#  - id: archive_data
#    doc: |-
#        Archive validation data.
#    run: ./tools/archive_data.cwl
#    in:
#      data: derive_array_elements_coordinates/derivation_data
#      assert_return_code: assert_model_parameter/return_code
#    when: $(inputs.assert_return_code == 'SUCCESS')
#    out:
#      - return_code

requirements:
  SubworkflowFeatureRequirement: {}
