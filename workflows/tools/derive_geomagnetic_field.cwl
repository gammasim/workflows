#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_geomagnetic_field
doc: Calculate geomagnetic field for a given site and date.

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

stdout: derive_geomagnetic_field.log
stderr: derive_geomagnetic_field.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
