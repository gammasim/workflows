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

arguments: [
    "--export", "corsika", "--use_corsika_telescope_height",
    "--output_path", ".", "--use_plain_output_path"
    ]

outputs:

    - id: model_parameter
      type: File
      outputBinding:
        glob: ./telescope_positions-corsika.ecsv

    - id: derivation_data
      doc: |-
        Additional data or logging output from this tool.
      type: stdout

stdout: derivation_data.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
    dockerOutputDirectory: /workdir/external
