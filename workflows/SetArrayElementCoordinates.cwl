#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetArrayElementCoordinates
doc: |-
  Transform array element coordinates into the coordinate
  system required by the simulation pipeline (i.e., CORSIKA system).

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
