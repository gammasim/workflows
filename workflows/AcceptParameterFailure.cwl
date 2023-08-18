#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: AcceptParameterFailure
doc: |-
  validation or review of parameter updates failed.
  Action required and feedback to be provided.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: accept_parameter_report
    run: tools/accept_parameter_report.cwl
    in:
      input: input
    out:
      - output
  - id: accept_feedback_required
    run: tools/accept_feedback_required.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
