#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_high_low_gain_transition
doc: |-
  Compare transition from low to gain for dual-gain readouts.
  Includes high-low gain multiplier and brightness of transition.

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

stdout: validate_high_low_gain_transition.log
stderr: validate_high_low_gain_transition.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
