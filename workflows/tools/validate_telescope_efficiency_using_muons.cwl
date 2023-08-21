#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_telescope_efficiency_using_muons
doc: |-
  Compare reconstructed brightness (total intensity)
  of simulated and measured muons.

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

stdout: validate_telescope_efficiency_using_muons.log
stderr: validate_telescope_efficiency_using_muons.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# use the `ctapipe-process` tool with the following options
# --write-muon-parameters
# --CameraCalibrator.image_extractor_type=GlobalPeakWindowSum
# --GlobalPeakWindowSum.pixel_fraction=0.2
# to extract muon optical efficiency
