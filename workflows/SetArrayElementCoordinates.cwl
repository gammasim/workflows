#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetArrayElementCoordinates
doc: |-
  Transform array element coordinates into the coordinate
  system required by the simulation pipeline (i.e., CORSIKA system).

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: receive_data_from_api
    run: tools/receive_data_from_api.cwl
    in:
      input: input
    out:
      - output
  - id: derive_array_elements_coordinates
    run: tools/derive_array_elements_coordinates.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
