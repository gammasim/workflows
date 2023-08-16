#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetTelescopeShadowingParameters
doc: |-
  Derive parameters relevant for shadowing components of the
  telescopes.

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
  - id: derive_optical_transmission
    run: tools/derive_optical_transmission.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
