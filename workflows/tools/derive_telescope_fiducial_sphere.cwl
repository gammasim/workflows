#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_telescope_fiducial_sphere
doc: |-
  Calculate telescope fiducial sphere parameters from telescope structure
  parameters.

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

stdout: derive_telescope_fiducial_sphere.log
stderr: derive_telescope_fiducial_sphere.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
