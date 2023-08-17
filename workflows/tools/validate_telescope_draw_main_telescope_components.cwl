#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_telescope_draw_main_telescope_components
doc: |-
  Draw a 2D/3D model of main optical components
  (e.g., optical dish, camera)

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

stdout: validate_telescope_draw_main_telescope_components.log
stderr: validate_telescope_draw_main_telescope_components.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# examples are e.g., the ROBAST telescope drawing
