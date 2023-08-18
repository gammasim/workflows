#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateMirrorPanelParameters
doc: |-
  Validate characteristics of mirror panels and their
  impact on the optical performance.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_mirror_panel_focal_length_using_lab_measurements
    run: tools/validate_mirror_panel_focal_length_using_lab_measurements.cwl
    in:
      input: input
    out:
      - output
  - id: validate_mirror_panel_optical_throughput_using_muons
    run: tools/validate_mirror_panel_optical_throughput_using_muons.cwl
    in:
      input: input
    out:
      - output
  - id: validate_mirror_panel_optical_psf_using_muons
    run: tools/validate_mirror_panel_optical_psf_using_muons.cwl
    in:
      input: input
    out:
      - output
  - id: validate_mirror_panel_optical_psf_using_lab_measurements
    run: tools/validate_mirror_panel_optical_psf_using_lab_measurements.cwl
    in:
      input: input
    out:
      - output
  - id: validate_mirror_panel_alignment
    run: tools/validate_mirror_panel_alignment.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
