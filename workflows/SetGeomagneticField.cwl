#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetGeomagneticField
doc: |-
  Calculate geomagnetic field parameters for a given site
  and date.

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
  - id: derive_geomagnetic_field
    run: tools/derive_geomagnetic_field.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
