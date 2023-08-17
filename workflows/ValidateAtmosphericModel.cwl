#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateAtmosphericModel
doc: Validate model of atmosphere

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_cherenkov_distributions_by_history
    run: tools/validate_cherenkov_distributions_by_history.cwl
    in:
      input: input
    out:
      - output
  - id: validate_atmospheric_model_by_history
    run: tools/validate_atmospheric_model_by_history.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}

# Developer's notes:
# (missing methods? Particle distributions by history?)
