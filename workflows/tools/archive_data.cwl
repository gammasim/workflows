#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: archive_data
doc: |-
    Submit data to archive for long-term storage.
    DEVELOPER-NOTE - ingest command to DPPS-BDMS subsystem.
    DEVELOPER-NOTE - assume in that metadata is included.

baseCommand:
    - echo

inputs:

    - id: data
      doc: |-
        Data or parameter(s) to be archived.
      type: File

outputs:

    - id: return_code
      doc: |-
        Return code of archive submission.
      type: string

stdout: output.txt
