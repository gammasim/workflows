#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetReadoutPulseShape
doc: |-
  Set FADC pulse for high and low-gain channel. Apply
  transformations required by the simulation model (e.g.,
  normalization, time shift)

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: receive_data_from_api
    run: tools/receive_data_from_api.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
