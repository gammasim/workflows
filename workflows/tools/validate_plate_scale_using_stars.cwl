#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_plate_scale_using_stars
doc: |-
  Compare plate scale (distance and rotation) between
  measurements using stars and ray-tracing calculations.

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

stdout: validate_plate_scale_using_stars.log
stderr: validate_plate_scale_using_stars.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
