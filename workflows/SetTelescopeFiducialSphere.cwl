#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetTelescopeFiducialSphere
doc: |-
  Derive telescope fiducial sphere radius from telescope structure
  parameters.

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
  - id: derive_telescope_fiducial_sphere
    run: tools/derive_telescope_fiducial_sphere.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
