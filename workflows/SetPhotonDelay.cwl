#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetPhotonDelay
doc: |-
  Derive additional delay of photon arrival times at the
  photodetectors.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: derive_photon_delay
    run: tools/derive_photon_delay.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
