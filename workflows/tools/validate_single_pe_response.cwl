#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_single_pe_response
doc: Validate by TODO.

baseCommand:
  - echo

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

stdout: validate_single_pe_response.log
stderr: validate_single_pe_response.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# method? Or plotting only?
