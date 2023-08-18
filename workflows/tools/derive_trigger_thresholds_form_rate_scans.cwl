#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_trigger_thresholds_form_rate_scans
doc: Derive trigger thresholds from rate scans

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

stdout: derive_trigger_thresholds_form_rate_scans.log
stderr: derive_trigger_thresholds_form_rate_scans.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
