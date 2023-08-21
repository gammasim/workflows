#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: accept_parameter_report
doc: |-
  provide a report for parameter (non-)acceptance including
  details on validation and review. This report should indicate
  the changes compared to historical parameters, reason for changes,
  and all necessary metadata for repeatability.

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

stdout: accept_parameter_report.log
stderr: accept_parameter_report.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
