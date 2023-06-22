#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: AcceptAndArchive
doc: |-
    Accept and archive simulation model parameter(s).
    Acceptances includes review of validation process.

inputs:

    - id: model_parameter
      type: File
      doc: |-
        New or updated simulation parameter(s).

    - id: validation_report
      type: File
      doc: |-
        Report on validation process.

outputs:

  - id: acceptance_statement
    doc: |-
        Acceptence statement issued by the simulation
        system or by manual inspection.
    type: string
    outputSource: review_validation/acceptance_statement

  - id: model_database_return_code
    type: string
    outputSource: update_model_database/return_code

steps:

  - id: review_validation
    doc: |-
        Validation review.
    run: 
        ./tools/review_validation.cwl
    in: 
        validation_report: validation_report
    out: 
        - acceptance_statement

  - id: update_model_database
    doc: |-
        Write simulation model parameters(s) to a database.
        DEVELOPERNOTE - this is exactly the docstring of
        update_model_database.cwl
    run:
        ./tools/update_model_database.cwl
    in:
        data: model_parameter
    out: 
        - return_code
