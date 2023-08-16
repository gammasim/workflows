#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateTriggerPerformance
doc: Compare trigger performance between simulations and data.

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
