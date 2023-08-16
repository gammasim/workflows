#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidatePixelStatus
doc: Validate pixel on/off status (disabled or broken pixels / channels)

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
