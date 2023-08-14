#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: assert_data
doc: |-
    Assert data or model parameter(s) using a schema
    describing format, data types, units, and value ranges.
    DEVELOPERNOTE - Is this part of this tool -
    Input data is enriched with metadata to ensure full reproducibility.

baseCommand: [simtools-submit-data-from-external]

inputs:

    - id: name
      doc: |-
        Name of the workflow step.
      type: string

    - id: data
      doc: |-
        Input data or model parameter.
      type: File
      inputBinding:
          prefix: --input

    - id: schema
      doc: |-
        Schema describing the input data.
      type: File
      inputBinding:
          prefix: --schema

arguments: [
  "--output_path", "simtools-output", "--use_plain_output_path",
]

outputs:

    - id: model_parameter
      type: File
      outputBinding:
        glob: "simtools-output/*ecsv"

    - id: assertion_data
      doc: |-
        Additional data or logging output from this tool.
      type: File[]
      outputBinding:
        glob: ["$(inputs.name).log", "simtools-output/*.metadata.yml"]

stdout: $(inputs.name).log
stderr: $(inputs.name).log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: simtools-prod
#    dockerPull: ghcr.io/gammasim/simtools-prod:latest
