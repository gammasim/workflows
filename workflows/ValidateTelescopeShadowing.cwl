#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateTelescopeShadowing
doc: |-
  Validate shadowing from masts, camera housing, and other
  structural elements.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_telescope_shadowing_using_simulations
    run: tools/validate_telescope_shadowing_using_simulations.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
