#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_telescope_efficiency_by_history
doc: |-
  Determine effective mirror area and telescope efficiency.
  Compare with historical results or with results obtained by
  reference simulation models. Take into account the
  photon spectrum of shower events, muonic events,
  and different levels of night-sky background.

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

stdout: validate_telescope_efficiency_by_history.log
stderr: validate_telescope_efficiency_by_history.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# compares with previous measurements; no cross check with
# any data from e.g., calibration or observations
