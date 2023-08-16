#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetTelescopeShadowingParameters
doc: |-
  Derive parameters relevant for shadowing components of the
  telescopes.

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
