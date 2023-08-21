#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_camera_orientation
doc: |-
  Validation orientation (rotation) of camera by
  comparing positions of bright pixels (e.g. due to
  bright stars) as function of time for measurements
  and simulations.

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

stdout: validate_camera_orientation.log
stderr: validate_camera_orientation.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
