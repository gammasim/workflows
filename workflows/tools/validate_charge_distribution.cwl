#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_charge_distribution
doc: |-
  Compare (plot, statistical metric) integrated charge
  spectrum for pedestal events, cosmic-ray measurements
  and events from artificial light sources between
  observations (from cosmic-ray and night-sky background
  events and data from artificial light source) with
  corresponding simulations. Includes the integrated
  charge vs pulse maximum and pulse width correlation.
  Charge distributions from pedestal events allow to
  validate afterpulsing rates for PMT-type detectors.

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

stdout: validate_charge_distribution.log
stderr: validate_charge_distribution.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
