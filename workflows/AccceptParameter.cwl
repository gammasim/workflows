#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: AccceptParameter
doc: |-
  accept a simulation model parameter (or set of parameters)
  as validated and to be used in future MC productions.

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
