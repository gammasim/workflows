#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetNightSkyBackgroundRate
doc: |-
  Derive or calculate night-sky background rate
  per pixel.

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
  - id: derive_nsb_rate_from_nsb_spectrum
    run: tools/derive_nsb_rate_from_nsb_spectrum.cwl
    in:
      input: input
    out:
      - output
  - id: derive_nsb_rate_from_pedestal_events
    run: tools/derive_nsb_rate_from_pedestal_events.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}

# Developer's notes:
# discuss how to deal with a case in which the same method provides two or more values (e.g., testeff provides both efficiencies and NSB rate). TODO - check Grenada talk on NSB
