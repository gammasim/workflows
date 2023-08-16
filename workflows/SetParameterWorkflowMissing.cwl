#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetParameterWorkflowMissing
doc: This is a placeholder for a missing setting workflow.

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
