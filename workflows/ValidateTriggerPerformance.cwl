#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateTriggerPerformance
doc: Compare trigger performance between simulations and data.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_trigger_pattern_configuration
    run: tools/validate_trigger_pattern_configuration.cwl
    in:
      input: input
    out:
      - output
  - id: validate_trigger_threshold_scans
    run: tools/validate_trigger_threshold_scans.cwl
    in:
      input: input
    out:
      - output
  - id: validate_trigger_rates
    run: tools/validate_trigger_rates.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
