#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidationWorkflowMissing
doc: |-
  This is a placeholder for a missing
  acceptance workflow.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_missing_method
    run: tools/validate_missing_method.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}

# Developer's notes:
# used by developers to find workflows which
# are missing.
