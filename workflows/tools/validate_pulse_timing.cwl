#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_pulse_timing
doc: |-
  Compare pulse arrival time distributions and pulse shape characteristics
  from muon candidates and from data obtained with calibration light sources
  with simulations. This includes time of pulse maximum distribution, rise
  and fall times per pixel and averaged over the camera.

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

stdout: validate_pulse_timing.log
stderr: validate_pulse_timing.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
