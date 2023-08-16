#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetTelescopeFiducialSphere
doc: |-
  Derive telescope fiducial sphere radius from telescope structure
  parameters.

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
