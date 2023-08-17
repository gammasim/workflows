#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetEffectiveFocalLength
doc: |-
  Calculate effective focal length for the given
  telescope optics.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: derive_effective_focal_length
    run: tools/derive_effective_focal_length.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}

# Developer's notes:
# Effective focal is required for the reconstruction,
# not for simulations. There might be a small dependency
# on the applied image cleaning method (to be investigated).
