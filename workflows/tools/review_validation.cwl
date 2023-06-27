#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: review_validation
doc: |-
    Review validation report.
    DEVELOPERNOTE - requires a bit of thinking how
    this is actually done (automatically / manually)

baseCommand:
  - echo

arguments:
  - "false"

inputs:

    - id: validation_report
      doc: |-
        Report issued by validation workflow(s).
      type: File

outputs:

    - id: acceptance_statement
      doc: |-
        Acceptance statement.
        DEVELOPERNOTE - is this simply a keyword like
        accepted / not_accepted or more extensive?
      type: string

stdout: output.txt
