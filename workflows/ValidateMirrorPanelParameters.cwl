#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateMirrorPanelParameters
doc: |-
  Validate characteristics of mirror panels and their
  impact on the optical performance.

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
