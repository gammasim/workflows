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

# Developer's notes:
# after pulse folding with prompt spectrum discussed in
# [redmine issue 26487](https://forge.in2p3.fr/issues/26487);
# interface to norm_spe program in sim_telarray.
