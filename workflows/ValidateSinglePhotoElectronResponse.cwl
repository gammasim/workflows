#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateSinglePhotoElectronResponse
doc: Validate single photon electron response.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_single_pe_response
    run: tools/validate_single_pe_response.cwl
    in:
      input: input
    out:
      - output
  - id: validate_absolute_gains
    run: tools/validate_absolute_gains.cwl
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
  - id: validate_charge_resolution
    run: tools/validate_charge_resolution.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
