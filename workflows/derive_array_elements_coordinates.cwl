#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_array_elements_coordinates
doc: |-
    Derive coordinates of array elements in the
    simulation pipeline coordinate system.
    This tool performs a coordinate transformation 
    from UTM to the CORSIKA system.

# giving full path not nice; see if one can do
# something with environmental variables
baseCommand:
    - python
    - /workdir/gammasim-tools/applications/print_array_elements.py

inputs:
  data:
    doc: |-
        List of array elements in UTM coordinates.
    type: File
    inputBinding:
        prefix: --array_element_list

# command line arguments - each of them as individual strings
# ("--export corsika" will fail)
arguments: ["--export", "corsika", "--use_corsika_telescope_height"]

outputs:
    model_parameter: 
        type: File
# not nice! need to know the exact simtools output directory (with date!)
# see if this can be changed on the simtools side
        outputBinding:
            glob: simtools-output/d-2023-06-19/layout/telescope_positions-corsika.ecsv

# stdout are written to this file and preserved
stdout: output.txt

requirements:
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/gammasim-tools-prod:latest
    dockerOutputDirectory: /workdir/external
