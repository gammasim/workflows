#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: archive_data
doc: |-
    Submit data to archive for long-term storage.
    DEVELOPER-NOTE - ingest command to DPPS-BDMS subsystem.
    DEVELOPER-NOTE - assume in that metadata is included.

baseCommand: [echo]

inputs:

    - id: data
      doc: |-
        Input data or model parameter.
      type: File

outputs:

    - id: output
      doc: |-
        Placeholder for output
      type: string

stdout: archive_data.log
stderr: archive_data.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: simtools-prod
#    dockerPull: ghcr.io/gammasim/simtools-prod:latest
