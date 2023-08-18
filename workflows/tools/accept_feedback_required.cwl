#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: accept_feedback_required
doc: |-
  request feedback to a failed review or validation workflow.
  Requires action by another system or the responsible actors.

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

stdout: accept_feedback_required.log
stderr: accept_feedback_required.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
