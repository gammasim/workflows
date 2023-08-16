#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_parameter_by_comparing_simulation_vs_input_data
doc: |-
  Comparison of calibration data vs simulation
  model parameters by plotting and calculation of
  statistical comparison metrics.

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

stdout: validate_parameter_by_comparing_simulation_vs_input_data.log
stderr: validate_parameter_by_comparing_simulation_vs_input_data.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
