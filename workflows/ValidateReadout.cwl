#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateReadout
doc: Validate readout (if applicable for high and low gain chain).

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
