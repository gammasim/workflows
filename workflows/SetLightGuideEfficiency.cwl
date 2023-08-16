#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetLightGuideEfficiency
doc: |-
  Set light guide efficiency as function of wavelength
  and incident angle.

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
  - id: derive_lightguide_efficiency
    run: tools/derive_lightguide_efficiency.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
