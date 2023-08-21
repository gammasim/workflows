#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_optical_transmission
doc: |-
  Calculate optical effective area as function of photon
  incident angle

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

stdout: derive_optical_transmission.log
stderr: derive_optical_transmission.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# requires detailed ray tracing of all telescope components
# (e.g., using ROBAST, ZEMAX, simtel\_array detailed mode)
