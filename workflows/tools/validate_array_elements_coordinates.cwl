#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_array_elements_coordinates
doc: |-
    Validate array element coordinates by plotting.
    Plot all array element coordinates in different coordinate systems
    and with different zooming levels including the telescope altitudes.
    Plot distance distributions between telescopes.

baseCommand:
  - echo

inputs:

  - id: data
    doc: |-
      List of array elements in simulation system coordinates.
    type: File

outputs:

  - id: validation_data
    type: File

# stdout are written to this file and preserved
stdout: output.txt

requirements:
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/gammasim-tools-prod:latest
    dockerOutputDirectory: /workdir/external
