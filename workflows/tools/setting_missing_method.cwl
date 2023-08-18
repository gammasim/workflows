#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: setting_missing_method
doc: Placeholder for a missing setting method.

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

stdout: setting_missing_method.log
stderr: setting_missing_method.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
