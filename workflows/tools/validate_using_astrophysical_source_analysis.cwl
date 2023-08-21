#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_using_astrophysical_source_analysis
doc: |-
  Prepare instrument response functions and analyze a
  predefined set of measurements towards a gamma-ray
  emitter. Compare with historical measurements.
  Typical examples are tests with observations of the
  Crab Nebula or a reconstruction of the cosmic-ray
  electron spectrum.

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

stdout: validate_using_astrophysical_source_analysis.log
stderr: validate_using_astrophysical_source_analysis.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
