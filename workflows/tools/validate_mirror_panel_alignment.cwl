#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_mirror_panel_alignment
doc: |-
  Compare mirror panel alignment parameters in simulations
  with input provided by the steering processes of the
  actuators

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

stdout: validate_mirror_panel_alignment.log
stderr: validate_mirror_panel_alignment.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
