#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool

label: derive_array_elements_coordinates
doc: |-
    Derive coordinates of an array element in the
    simulation pipeline coordinate system.

baseCommand: [python, /Users/maierg/Downloads/cwlsandbox/workflows/applications/print_array_elements.py]

stdout: output.txt

inputs:
  data:
    type: File
    inputBinding:
        position: 1
        prefix: --array_element_list

arguments:
    - prefix: --use_corsika_telescope_height
    - prefix: --export corsika

outputs:
    model_parameter:
        type: stdout
#        type: File

hints:
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/containers/gammasim-tools-dev:v0.3.0-dev1
