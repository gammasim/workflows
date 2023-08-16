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

steps: []

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
