#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_pedestal_events
doc: |-
  Compare pixel-wise pedestal level and variance between
  simulated and reconstructed pedestal events
  (for different levels of night-sky background
  light, variations across the field of view, and with closed
  camera lid). For dual-gain readouts, this includes both
  low and high gain pedestals.

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

stdout: validate_pedestal_events.log
stderr: validate_pedestal_events.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
