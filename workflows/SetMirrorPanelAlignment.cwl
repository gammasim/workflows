#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetMirrorPanelAlignment
doc: |-
  Derive mirror panel alignment parameters from measurements
  of the optical point-spread functions.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: receive_data_from_api::receive_dish_psf_data
    run: tools/receive_data_from_api::receive_dish_psf_data.cwl
    in:
      input: input
    out:
      - output
  - id: derive_mirror_panel_alignment
    run: tools/derive_mirror_panel_alignment.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
