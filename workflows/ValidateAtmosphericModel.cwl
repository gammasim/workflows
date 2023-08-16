#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateAtmosphericModel
doc: Validate model of atmosphere

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
