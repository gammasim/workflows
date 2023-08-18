#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_mirror_panel_optical_psf_using_muons
doc: |-
  Compare ring width of muons between measured and simulated
  muonic events as function of position on the mirror dish.

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

stdout: validate_mirror_panel_optical_psf_using_muons.log
stderr: validate_mirror_panel_optical_psf_using_muons.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
