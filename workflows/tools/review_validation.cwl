#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: review_validation
doc: |-
    Review validation results.

baseCommand:
  - echo

inputs:

  - id: validation_data
    doc: |-
        Validation data to be reviewed.
    type: File

outputs:

  - id: validation_success
    type: boolean

# stdout are written to this file and preserved
stdout: output.txt

requirements:
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/gammasim-tools-prod:latest
    dockerOutputDirectory: /workdir/external
