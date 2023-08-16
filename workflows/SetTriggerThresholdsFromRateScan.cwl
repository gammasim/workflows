#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetTriggerThresholdsFromRateScan
doc: |-
  Derive trigger thresholds from rate scans taking
  into account night-sky background illumination
  and cosmic-ray triggered events.

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
