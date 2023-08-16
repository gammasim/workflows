#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_trigger_rates
doc: |-
  Compare single and stereo trigger rates between
  simulated and reconstructed events for relevant
  observation conditions (e.g., elevation, level of
  night-sky background). Single telescope trigger
  rates include comparision of frequency of trigger
  multiplicities.

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

stdout: validate_trigger_rates.log
stderr: validate_trigger_rates.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
