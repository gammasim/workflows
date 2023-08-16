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

steps:
  - id: validate_telescope_efficiency_by_history
    run: tools/validate_telescope_efficiency_by_history.cwl
    in:
      input: input
    out:
      - output
  - id: validate_telescope_efficiency_using_muons
    run: tools/validate_telescope_efficiency_using_muons.cwl
    in:
      input: input
    out:
      - output
  - id: validate_charge_distribution
    run: tools/validate_charge_distribution.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
