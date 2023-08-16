#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateCameraGainsAndEfficiency
doc: |-
  Validate pixel gain and efficiency in absolute and
  relative units.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_relative_gains
    run: tools/validate_relative_gains.cwl
    in:
      input: input
    out:
      - output
  - id: validate_absolute_gains
    run: tools/validate_absolute_gains.cwl
    in:
      input: input
    out:
      - output
  - id: validate_photodetector_efficiency
    run: tools/validate_photodetector_efficiency.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
