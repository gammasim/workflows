#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_lightguide_efficiency
doc: |-
  Set light guide efficiency as function of wavelength
  and incident angle.  Calculate if necessary a weighted
  average using the Cherenkov spectrum on the ground as
  weights.

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

stdout: derive_lightguide_efficiency.log
stderr: derive_lightguide_efficiency.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
