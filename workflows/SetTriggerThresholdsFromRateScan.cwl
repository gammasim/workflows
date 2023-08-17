#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetTriggerThresholdsFromRateScan
doc: |-
  Derive trigger thresholds from rate scans taking
  into account night-sky background illumination
  and cosmic-ray triggered events.

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
  - id: derive_trigger_thresholds_form_rate_scans
    run: tools/derive_trigger_thresholds_form_rate_scans.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}

# Developer's notes:
# used for generation of thresholds for simulation
# productions (probably not used during operation stages)
