#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_array_elements_coordinates
doc: |-
    Derive coordinates of array elements in the
    simulation pipeline coordinate system.
    This tool performs a coordinate transformation 
    from UTM to the CORSIKA system.

baseCommand: [simtools-print-array-elements]

inputs:

    - id: data
      doc: |-
        List of array elements in UTM coordinates.
      type: File
      inputBinding:
          prefix: --array_element_list

arguments: ["--export", "corsika", "--use_corsika_telescope_height"]

outputs:

    - id: model_parameter
      type: File
# not nice! need to know the exact simtools output directory (with date!)
# see if this can be changed on the simtools side
      outputBinding:
        glob: simtools-output/d-2023-07-06/layout/telescope_positions-corsika.ecsv

#    - id: derivation_data
#      doc: |-
#        Additional data from derivation workflow
#        DEVELOPERNOTE - not clear if this is required for all workflows
#      type: File

    - id: return_code
      doc: |-
        Return code of derivation process.
      type: string

# stdout are written to this file and preserved
stdout: output.txt

requirements:
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
    dockerOutputDirectory: /workdir/external
