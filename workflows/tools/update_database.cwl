#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: update_database
doc: |-
    Write data or parameter(s) to a database.

baseCommand:
    - echo

inputs:
  data:
    doc: |-
        Data or parameters to be filled into database.
    type: File

outputs:
  db_success:
    doc: |-
        Return value of database writing process.
    type: boolean
# stdout are written to this file and preserved
stdout: output.txt

requirements:
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/gammasim-tools-prod:latest
    dockerOutputDirectory: /workdir/external
