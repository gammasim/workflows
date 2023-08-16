#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateOpticalPSF
doc: Validate telescope (whole dish) optical point-spread function

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_optical_psf_using_stars
    run: tools/validate_optical_psf_using_stars.cwl
    in:
      input: input
    out:
      - output
  - id: validate_optical_psf_using_muons
    run: tools/validate_optical_psf_using_muons.cwl
    in:
      input: input
    out:
      - output
  - id: validate_optical_psf_using_detailed_ray_tracing
    run: tools/validate_optical_psf_using_detailed_ray_tracing.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
