#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetMirrorPanelAlignment
doc: |-
  Derive mirror panel alignment parameters from measurements
  of the optical point-spread functions.

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
