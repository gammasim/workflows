#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateTelescopeStructure
doc: |-
  Validate telescope structure by drawing components
  relevant for ray tracing of photons through the
  instrument.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_telescope_draw_mirror_panel_layout
    run: tools/validate_telescope_draw_mirror_panel_layout.cwl
    in:
      input: input
    out:
      - output
  - id: validate_telescope_draw_main_telescope_components
    run: tools/validate_telescope_draw_main_telescope_components.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
