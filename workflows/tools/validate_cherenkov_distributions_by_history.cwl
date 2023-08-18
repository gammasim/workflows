#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_cherenkov_distributions_by_history
doc: |-
  Compare Cherenkov photon distribution on telescope level
  (density, incident angle and wavelength distribution) with
  previous simulations. Allow for comparison at different
  elevation and azimuth angle (latter important after changes
  of the geomagnetic field parameters)

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

stdout: validate_cherenkov_distributions_by_history.log
stderr: validate_cherenkov_distributions_by_history.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
