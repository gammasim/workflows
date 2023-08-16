#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidatePedestalEvents
doc: |-
  Compare simulated and measured pedestal events
  (exposed to night-sky background light and with closed
  camera lid).

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
