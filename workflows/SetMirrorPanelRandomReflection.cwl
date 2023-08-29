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

  - id: schema_mirror_list
    doc: |
      Schema file for mirror list.
    type: File

  - id: schema_mirror_panel_psf_measurement
    doc: |
      Schema file for mirror panel optical point-spread
      function measurement.
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

  - id: log_assert_input_mirror_list
    type: File[]
    doc: |-
        Log file from assertion of input data.
    outputSource: assert_input_data_mirror_list/assertion_data
  
  - id: log_assert_input_mirror_panel_psf_measurement
    type: File[]
    doc: |-
        Log file from assertion of input data.
    outputSource: assert_input_data_mirror_panel_psf_measurement/assertion_data

steps:

  - id: assert_input_data_mirror_list
    doc: |-
        Assert input data using a schema file.
    run: ./tools/assert_data.cwl
    in:
        name: {valueFrom: "assert_input_data"}
        data: mirror_list
        schema: schema_mirror_list
    out:
        - assertion_output
        - assertion_data

# TODO - this generates a log file called assert_input_data.log_2;
#        improve naming
  - id: assert_input_data_mirror_panel_psf_measurement
    doc: |-
        Assert input data using a schema file.
    run: ./tools/assert_data.cwl
    in:
        name: {valueFrom: "assert_input_data"}
        data: mirror_panel_psf_measurement
        schema: schema_mirror_panel_psf_measurement
    out:
        - assertion_output
        - assertion_data

  - id: derive_mirror_panel_rnda
    run: tools/derive_mirror_panel_rnda.cwl
    in:
      mirror_list: assert_input_data_mirror_list/assertion_output
      mirror_panel_psf_measurement: assert_input_data_mirror_panel_psf_measurement/assertion_output
    out:
      - model_parameter
      - derivation_data

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
