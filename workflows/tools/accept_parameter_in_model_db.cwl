#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: accept_parameter_in_model_db
doc: |-
  submit an accepted simulation parameter (or a set of simulation
  parameters) to the simulation model DB.

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

stdout: accept_parameter_in_model_db.log
stderr: accept_parameter_in_model_db.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
