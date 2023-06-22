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

outputs:

  - id: parameter_derived
    type: File
    outputSource: derive_array_elements_coordinates/model_parameter

  - id: return_code
    type: string
    outputSource: archive_data/return_code

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

# TODO - handle return codes / error codes / skip

  - id: archive_data
    doc: |-
        Archive validation data.
    run: ./tools/archive_data.cwl
    in:
      data: derive_array_elements_coordinates/derivation_data
    out:
      - return_code

requirements:
  SubworkflowFeatureRequirement: {}
