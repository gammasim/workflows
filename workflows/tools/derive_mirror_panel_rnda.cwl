#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_mirror_panel_rnda
doc: |-
  Derive characteristic photon random reflection angle for
  mirror panels.

baseCommand: [simtools-derive-mirror-rnda]

# TMP
# --test should go away for full calculation
# --containment fraction, site, and telescope should be covered
#   by metadata in mirror_list or mirror_panel_psf_measurement
arguments: [
  "--output_path", "simtools-output", "--use_plain_output_path",
  "--site",  "North",  "--telescope", "MST-FlashCam-D",
  "--containment_fraction", "0.8", "--rnda", "0.0063",
  "--test"
]

inputs:
  - id: mirror_list
    type: File
    inputBinding:
      position: 1
      prefix: --mirror_list

  - id: mirror_panel_psf_measurement
    type: File
    inputBinding:
      position: 2
      prefix: --psf_measurement

outputs:

  - id: model_parameter
    doc: |
      Optimization results for the mirror panel random reflection
      angle distribution.
    type: File[]
    outputBinding:
      glob: ["simtools-output/*.ecsv"]

  - id: derivation_data
    doc: |-
      Additional data or logging output from this tool.
    type: File[]
    outputBinding:
      glob: ["derive_mirror_panel_rnda.log", "simtools-output/*.metadata.yml"]

stdout: derive_mirror_panel_rnda.log
stderr: derive_mirror_panel_rnda.log

requirements:
  NetworkAccess:
    networkAccess: true
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# Note that high-order components of this parameter might be
# affected by the derivation of the whole dish PSF.
