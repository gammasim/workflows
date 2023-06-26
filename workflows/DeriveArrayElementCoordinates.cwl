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

  - id: schema_parameter
    type: File
    doc: |-
        Schema describing model parameters.

outputs:

  - id: parameter_derived
    type: File
    outputSource: assert_model_parameter/data_asserted

  - id: return_code
    type: string
    outputSource: assert_model_parameter/return_code

steps:

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
      - return_code

  - id: assert_model_parameter
    doc: |-
        Assert derived model parameter using a known schema.
    run: ./tools/assert_data.cwl
    in:
        input: derive_array_elements_coordinates/model_parameter
        schema: schema_parameter
    out:
        - data_asserted
        - return_code

  - id: archive_data
    doc: |-
        Archive validation data.
    run: ./tools/archive_data.cwl
    in:
      data: derive_array_elements_coordinates/derivation_data
      assert_return_code: assert_model_parameter/return_code
    when: $(inputs.assert_return_code == 'SUCCESS')
    out:
      - return_code

requirements:
  SubworkflowFeatureRequirement: {}
