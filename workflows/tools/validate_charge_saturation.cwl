#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_charge_saturation
doc: |-
  Compare charge spectrum obtained from shower events
  or calibration light sources for data and simulations.
  Compare linearity of the response, saturation point,
  and pulse shape when the system is reaching saturation.

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

stdout: validate_charge_saturation.log
stderr: validate_charge_saturation.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
