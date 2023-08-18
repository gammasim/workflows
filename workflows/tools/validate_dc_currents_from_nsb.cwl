#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_dc_currents_from_nsb
doc: |-
  Compare pixel-wise DC currents between simulated and
  measured night-sky background settings. Allow to
  include the effect of realistic sky models and
  moonlight illumination.

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

stdout: validate_dc_currents_from_nsb.log
stderr: validate_dc_currents_from_nsb.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
