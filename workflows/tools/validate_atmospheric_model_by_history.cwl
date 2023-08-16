#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_atmospheric_model_by_history
doc: |-
  Plot and compare profiles and absorption probabilities as function
  of emission height and wavelength.

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

stdout: validate_atmospheric_model_by_history.log
stderr: validate_atmospheric_model_by_history.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
