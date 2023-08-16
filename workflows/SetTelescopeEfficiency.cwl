#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetTelescopeEfficiency
doc: |-
  Derive (or set) an overall efficiency parameter to the telescope
  throughput due to variations of the optical throughput.
  Allow for dependencies on off-axis angle and wavelength.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps: []

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
