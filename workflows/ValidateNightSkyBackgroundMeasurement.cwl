#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateNightSkyBackgroundMeasurement
doc: |-
  Validate measurements of the night-sky background
  including the impact of stars or moon light.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_dc_currents_from_nsb
    run: tools/validate_dc_currents_from_nsb.cwl
    in:
      input: input
    out:
      - output
  - id: validate_pedestal_events
    run: tools/validate_pedestal_events.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
