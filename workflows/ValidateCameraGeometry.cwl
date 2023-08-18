#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: ValidateCameraGeometry
doc: Validate camera shape, orientation, and pixel positions

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: validate_camera_face
    run: tools/validate_camera_face.cwl
    in:
      input: input
    out:
      - output
  - id: validate_camera_shape
    run: tools/validate_camera_shape.cwl
    in:
      input: input
    out:
      - output
  - id: validate_pixel_numbering
    run: tools/validate_pixel_numbering.cwl
    in:
      input: input
    out:
      - output
  - id: validate_camera_orientation
    run: tools/validate_camera_orientation.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}

# Developer's notes:
# TODO - review existing implementations in validate_camera_fov
# gammasim-tools application
