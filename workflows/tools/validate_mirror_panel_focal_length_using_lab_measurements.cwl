#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_mirror_panel_focal_length_using_lab_measurements
doc: |-
  Compare laboratory measurement of mirror panel focal
  length with those used in the simulation model.

baseCommand:
  - echo

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

stdout: validate_mirror_panel_focal_length_using_lab_measurements.log
stderr: validate_mirror_panel_focal_length_using_lab_measurements.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# plotting tool of measurements vs assumed focal lengths
# in simulation model
