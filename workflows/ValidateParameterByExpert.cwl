#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateParameterByExpert
doc: |-
  Validation by expert review (external
  instrument expert or member of the simulation team).

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
