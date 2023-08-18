#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: validate_optical_psf_using_detailed_ray_tracing
doc: |-
  Compare optical PSF parameters between production simulation
  code (optimized for efficiency) and detailed ray-tracing of
  every optical component (e.g., by comparing ROBAST or Zemax
  with results obtained with simtel\_array).

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

stdout: validate_optical_psf_using_detailed_ray_tracing.log
stderr: validate_optical_psf_using_detailed_ray_tracing.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest
