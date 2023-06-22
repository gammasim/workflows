#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: update_model_database
doc: |-
    Write simulation model parameter(s) to a database.
    DEVELOPER-NOTE - assume in that metadata is included.

baseCommand:
    - echo

inputs:

    - id: data
      doc: |-
        Simulation model parameters to be filled into database.
      type: File

outputs:

    - id: return_code
      doc: |-
        Return code of database submission.
      type: string

# stdout are written to this file and preserved
stdout: output.txt
