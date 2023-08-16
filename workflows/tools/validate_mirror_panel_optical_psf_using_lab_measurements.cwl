#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_mirror_panel_optical_psf_using_lab_measurements
doc: |-
  Compare lab measurements of mirror panel optical PSF
  with those obtained by simulations

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

stdout: validate_mirror_panel_optical_psf_using_lab_measurements.log
stderr: validate_mirror_panel_optical_psf_using_lab_measurements.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
