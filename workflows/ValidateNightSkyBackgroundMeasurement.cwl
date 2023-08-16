#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateNightSkyBackgroundMeasurement
doc: |-
  Validate measurements of the night-sky background
  including the impact of stars or moon light.

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
