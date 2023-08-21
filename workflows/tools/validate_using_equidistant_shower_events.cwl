#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_using_equidistant_shower_events
doc: |-
  Compare image intensity of telescope events at similar
  impact distances between data and simulated gamma-ray like
  events (see Hofmann et al, 2003).

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

stdout: validate_using_equidistant_shower_events.log
stderr: validate_using_equidistant_shower_events.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
