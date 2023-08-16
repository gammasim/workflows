#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_single_photoelectron_response
doc: |-
  Set single pe spectrum. Convert and normalize the input spectrum
  to follow the specifications of the simulation software (note different
  algorithms used to set the current model spectrum).

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

stdout: derive_single_photoelectron_response.log
stderr: derive_single_photoelectron_response.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
