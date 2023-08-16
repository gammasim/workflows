#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_nsb_rate_from_nsb_spectrum
doc: |-
  Derive NSB rate for a given spectral distribution
  of NSB photons.

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

stdout: derive_nsb_rate_from_nsb_spectrum.log
stderr: derive_nsb_rate_from_nsb_spectrum.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
