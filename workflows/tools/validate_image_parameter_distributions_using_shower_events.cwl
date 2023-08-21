#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_image_parameter_distributions_using_shower_events
doc: |-
  Comparison of image parameter distributions obtained
  from measurements (bright gamma-ray source, background
  events) with those from simulated events. Includes
  at least distributions for image brightness, width,
  length, time gradient, and pixel multiplicity.
  Compare for different elevation and azimuth angles,
  to validate site-dependent parameters like geomagnetic
  field settings, background light, and atmospheric profiles.

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

stdout: validate_image_parameter_distributions_using_shower_events.log
stderr: validate_image_parameter_distributions_using_shower_events.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
