#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_photodetector_efficiency
doc: |-
  Compare pixel-to-pixel quantum / photodetector efficiency
  (absolute and variation) with measurements.

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

stdout: validate_photodetector_efficiency.log
stderr: validate_photodetector_efficiency.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
