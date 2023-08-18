#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_camera_shape
doc: |-
  Validate shape of the camera including camera
  field of view and focal plane curvature (if applicable)
  by plotting and comparison with expert input
  (e.g., engineering drawings)

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

stdout: validate_camera_shape.log
stderr: validate_camera_shape.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
