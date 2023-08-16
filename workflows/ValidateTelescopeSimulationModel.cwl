#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateTelescopeSimulationModel
doc: Validate the telescope simulation model as a whole.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_image_parameter_distributions_using_shower_events
    run: tools/validate_image_parameter_distributions_using_shower_events.cwl
    in:
      input: input
    out:
      - output
  - id: validate_image_parameter_distributions_using_muons
    run: tools/validate_image_parameter_distributions_using_muons.cwl
    in:
      input: input
    out:
      - output
  - id: validate_using_equidistant_shower_events
    run: tools/validate_using_equidistant_shower_events.cwl
    in:
      input: input
    out:
      - output
  - id: validate_using_astrophysical_source_analysis
    run: tools/validate_using_astrophysical_source_analysis.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
