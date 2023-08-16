#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateCameraLinearity
doc: |-
  Validate linearity of camera response including
  the transition from high-to-low gain channels for
  cameras with dual-gain readout.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_readout_linearity
    run: tools/validate_readout_linearity.cwl
    in:
      input: input
    out:
      - output
  - id: validate_high_low_gain_transition
    run: tools/validate_high_low_gain_transition.cwl
    in:
      input: input
    out:
      - output
  - id: validate_charge_saturation
    run: tools/validate_charge_saturation.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
