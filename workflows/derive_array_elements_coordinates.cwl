#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_array_elements_coordinates
doc: |-
    Derive coordinates of array elements in the
    simulation pipeline coordinate system.
    This tool performs a coordinate transformation 
    from UTM to the CORSIKA system.

baseCommand:
    - python
    - /workdir/gammasim-tools/applications/print_array_elements.py

stdout: output.txt

inputs:
  data:
    doc: |-
        List of array elements in UTM coordinates.
    type: File
    inputBinding:
        prefix: --array_element_list

arguments:
    - prefix: --use_corsika_telescope_height
    - prefix: --export corsika

outputs:
    model_parameter: 
        type: File
        outputBinding:
            glob: telescope_positions-corsika.ecsv

requirements:
  DockerRequirement:
    dockerPull: gammasim-tools-prod
    dockerOutputDirectory: /workdir/simtools-output/d-2023-06-17/layout/
