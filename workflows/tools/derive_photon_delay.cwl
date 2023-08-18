#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_photon_delay
doc: |-
  Derive additional delay of photon arrival times at the
  photodetectors from the median arrival times of Cherenkov
  photons of simulated air shower events.

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

stdout: derive_photon_delay.log
stderr: derive_photon_delay.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# Positive delay corresponds to pulses arriving later in the readout
# window.
# TODO - clarify type of simulations (particle type, spectra, etc)
