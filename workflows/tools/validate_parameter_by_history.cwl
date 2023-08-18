#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_parameter_by_history
doc: |-
  Validate a simulation model parameter through comparison
  with historical values found in the simulation model
  database and with comparison to data obtained through
  an API. Includes tables and plots for comparison and
  the evaluation of differences to earlier values using
  statistical metrics.

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

stdout: validate_parameter_by_history.log
stderr: validate_parameter_by_history.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
