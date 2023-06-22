#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ReceiveAndAssert
doc: |- 
    Receive simulation model parameter update or data to derive
    simulation model parameter(s) (e.g., by querying a database
    or triggered by an interface input). Assert ingest using
    a pre-defined schema describing the required input data.
    DEVELOPERNOTE - missing step of metadata enrichment?

inputs:

  - id: input
    type: File
    doc: |- 
        Input data or model parameter.
        DEVELOPERNOTE - any input is considered to be a file, even if it
        is a single number.
        DEVELOPERNOTE - does that need to be an array of files?

  - id: schema
    type: File
    doc: |-
        Schema describing the input data.
        DEVELOPERNOTE - explicitely list schema here; could later be
        retrieved by a workflow.
        DEVELOPERNOTE - does that need to be an array of files?

outputs:

  - id: data_asserted
    type: File
    outputSource: assert_data/data_asserted

  - id: return_code
    type: string
    outputSource: archive_data/return_code

steps:

  - id: assert_data
    doc: |-
        Assert data using provided schema.
    run: ./tools/assert_data.cwl
    in:
      input: input
      schema: schema
    out:
      - data_asserted
      - return_code

# TODO - handle return codes / error codes / skip

  - id: archive_data
    doc: |-
        Archive asserted data.
    run: ./tools/archive_data.cwl
    in:
      data: assert_data/data_asserted
    out:
      - return_code

requirements:
  SubworkflowFeatureRequirement: {}
