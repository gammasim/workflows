#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_telescope_draw_mirror_panel_layout
doc: Plot mirror panel layout including mirror panel IDs.

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

stdout: validate_telescope_draw_mirror_panel_layout.log
stderr: validate_telescope_draw_mirror_panel_layout.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
