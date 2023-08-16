#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateParameterByDataComparision
doc: |-
  Validation by comparing simulation parameter with
  calibration or laboratory data values. Might
  include statistical evaluation of differences,
  plotting, or expert review.

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
