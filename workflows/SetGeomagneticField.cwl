#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetGeomagneticField
doc: |-
  Calculate geomagnetic field parameters for a given site
  and date.

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
