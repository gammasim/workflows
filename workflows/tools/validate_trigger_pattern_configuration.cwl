#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_trigger_pattern_configuration
doc: |-
  Validate trigger pattern of pixel groups by analyzing
  frequency of patterns using an artificial light source
  and by comparing simulated with measured event data.

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

stdout: validate_trigger_pattern_configuration.log
stderr: validate_trigger_pattern_configuration.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# example for SCT trigger pattern checking discussed in
# [issue 37513](https://redmine.cta-observatory.org/issues/37513)
