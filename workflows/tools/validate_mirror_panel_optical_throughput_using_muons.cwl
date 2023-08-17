#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_mirror_panel_optical_throughput_using_muons
doc: |-
  Compare optical throughput from muons vs muon ring center
  position on the mirror dish

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

stdout: validate_mirror_panel_optical_throughput_using_muons.log
stderr: validate_mirror_panel_optical_throughput_using_muons.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# see Fig 10 in Gaug, M. et al (ApJS, 2019)
