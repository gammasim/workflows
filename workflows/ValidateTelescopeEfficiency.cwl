#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateTelescopeEfficiency
doc: |-
  Validate telescope throughput taking into account the
  optical (mirror configurations, reflectivity, shadowing
  elements, camera filter, light cones) and camera
  (photo-detection efficiency) components.

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
