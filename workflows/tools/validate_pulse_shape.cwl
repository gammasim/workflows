#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_pulse_shape
doc: |-
  Compare pulse shape measured in laboratory with
  simulations assuming an artificial light source
  (e.g., laser, illuminator). Compare dependency
  of pulse shape on brightness of light source.

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

stdout: validate_pulse_shape.log
stderr: validate_pulse_shape.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
