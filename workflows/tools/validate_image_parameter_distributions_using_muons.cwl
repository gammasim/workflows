#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_image_parameter_distributions_using_muons
doc: |-
  Comparison of muon image parameter distributions obtained
  from measurements with those from simulated events.

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

stdout: validate_image_parameter_distributions_using_muons.log
stderr: validate_image_parameter_distributions_using_muons.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
