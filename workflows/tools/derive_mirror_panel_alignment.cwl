#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_mirror_panel_alignment
doc: |-
  Derive mirror alignment parameters from measurements
  of the optical point-spread functions

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

stdout: derive_mirror_panel_alignment.log
stderr: derive_mirror_panel_alignment.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# understand where the second component of the mirror_reflection_random_angle
# is modified to describe tails visible in some dish PSFs
