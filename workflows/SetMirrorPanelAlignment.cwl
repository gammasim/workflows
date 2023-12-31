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
  - id: receive_data_from_api
    run: tools/receive_data_from_api.cwl
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

# Developer's notes:
# require adjustments of mirror panel reflection angle (second
# component only) to describe tails.
# Check if there are any boundaries or input from
# the mirror alignment system. Discuss if outliers (strongly
# misaligned mirrors) exist and need to be taken into
# account. Asymmetry of alignment (top-bottom/left-right) possibly
# needs to be taken into account.
