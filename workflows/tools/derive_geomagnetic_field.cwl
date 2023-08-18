#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: CommandLineTool

label: derive_geomagnetic_field
doc: Calculate geomagnetic field for a given site and date.

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

stdout: derive_geomagnetic_field.log
stderr: derive_geomagnetic_field.log

requirements:
  InlineJavascriptRequirement: {}
  DockerRequirement:
    dockerPull: ghcr.io/gammasim/simtools-prod:latest

# Developer's notes:
# "Geomagnetic field calculation provided by the
# IAGA Working Group V-MOD, see
# https://www.ngdc.noaa.gov/IAGA/vmod/igrf.html
# Typical usage for CTA
# ./geomag70 IGRF13.COF 2025.00 D K2.150 -24.683429 -70.316345
# (field model: IGRF13.COF, date: 2025.00, D:geodetic,
# altitude (in km), lat, long).
# Different implementation (FORTRAN, python) of this tool exists.
# Alternative application, see https://github.com/ancklo/ChaosMagPy"
