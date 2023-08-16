#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_nsb_rate_from_pedestal_events
doc: |-
  Derive NSB by simulating pedestal events
  for different levels of night-sky background
  rates. Includes average rate across the camera
  and position dependent NSB rates.

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

stdout: derive_nsb_rate_from_pedestal_events.log
stderr: derive_nsb_rate_from_pedestal_events.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
