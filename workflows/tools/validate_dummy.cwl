#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_dummy
doc: |-
    Dummy validation method used as placeholder.

baseCommand:
  - echo

inputs:

    - id: data
      doc: |-
        Model parameters to be validated.
      type: File

outputs:

  - id: validation_data
    type: File
    outputBinding:
        glob: output_validate_dummy.txt

stdout: output_validate_dummy.txt
