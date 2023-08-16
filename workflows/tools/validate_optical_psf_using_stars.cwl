#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_optical_psf_using_stars
doc: |-
  Compare optical point-spread function obtained from
  measurements using stars with those obtained from
  simulations for on- and (if available) off-axis angles
  (at different telescope elevations).
  Includes comparison of encircled energy (at different
  cumulative values) and of the PSF shape.

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

stdout: validate_optical_psf_using_stars.log
stderr: validate_optical_psf_using_stars.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
