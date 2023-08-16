#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_using_astrophysical_source_position
doc: |-
  Compare reconstructed source direction of a strong
  astrophysical gamma-ray source with results obtained
  with simulations.

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

stdout: validate_using_astrophysical_source_position.log
stderr: validate_using_astrophysical_source_position.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
