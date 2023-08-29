#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetMirrorPanelRandomReflection
doc: |-
  Derive characteristic photon random reflection
  angle from mirror panel optical point-spread
  function measurements.

inputs:

  - id: mirror_list
    doc: |
      Mirror list including focal lengths per mirror panel.
    type: File

  - id: mirror_panel_psf_measurement
    doc: |
      Mirror panel optical point-spread function
      measurement.
    type: File

outputs:

  - id: parameter_derived
    doc: |
      Derived mirror random reflection angle.
    type: File[]
    outputSource: derive_mirror_panel_rnda/model_parameter

  - id: log_derive_mirror_panel_rnda
    doc: |-
      Log file from derivation of mirror panel reflection angle
    type: File[]
    outputSource:
      - derive_mirror_panel_rnda/derivation_data

steps:

  - id: derive_mirror_panel_rnda
    run: tools/derive_mirror_panel_rnda.cwl
    in:
      mirror_list: mirror_list
      mirror_panel_psf_measurement: mirror_panel_psf_measurement
    out:
      - model_parameter
      - derivation_data

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
