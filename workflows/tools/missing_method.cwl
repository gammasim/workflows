#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: missing_method
doc: |-
  placeholder for a missing method or missing method
  description.

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

stdout: missing_method.log
stderr: missing_method.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# (used by developers to find missing methods)
