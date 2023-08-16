#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetSinglePhotoElectronResponse
doc: |-
  Set single photo-electron response spectrum including
  after pulsing or cross talk.

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
