#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_trigger_threshold_scans
doc: |-
  Compare trigger rates due to night-sky background and
  cosmic-ray events for simulated and measured
  scans through a range of different trigger thresholds
  (also called bias curves)

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

stdout: validate_trigger_threshold_scans.log
stderr: validate_trigger_threshold_scans.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
