#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateCameraChargeResponse
doc: Validate camera charge response.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_pulse_shape
    run: tools/validate_pulse_shape.cwl
    in:
      input: input
    out:
      - output
  - id: validate_charge_resolution
    run: tools/validate_charge_resolution.cwl
    in:
      input: input
    out:
      - output
  - id: validate_charge_distribution
    run: tools/validate_charge_distribution.cwl
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
  - id: validate_photodetector_efficiency
    run: tools/validate_photodetector_efficiency.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
