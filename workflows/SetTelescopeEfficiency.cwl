#!/usr/bin/env cwl-runner
cwlVersion: v1.2
class: Workflow

label: SetTelescopeEfficiency
doc: |-
  Derive (or set) an overall efficiency parameter to the telescope
  throughput due to variations of the optical throughput.
  Allow for dependencies on off-axis angle and wavelength.

inputs:
  - id: input
    doc: Placeholder for input data
    type: string

outputs:
  - id: output
    doc: Placeholder for output data
    type: string

steps:
  - id: '-'
    run: tools/-.cwl
    in:
      input: input
    out:
      - output
  - id: ' '
    run: tools/ .cwl
    in:
      input: input
    out:
      - output
  - id: r
    run: tools/r.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: c
    run: tools/c.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: i
    run: tools/i.cwl
    in:
      input: input
    out:
      - output
  - id: v
    run: tools/v.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: _
    run: tools/_.cwl
    in:
      input: input
    out:
      - output
  - id: d
    run: tools/d.cwl
    in:
      input: input
    out:
      - output
  - id: a
    run: tools/a.cwl
    in:
      input: input
    out:
      - output
  - id: t
    run: tools/t.cwl
    in:
      input: input
    out:
      - output
  - id: a
    run: tools/a.cwl
    in:
      input: input
    out:
      - output
  - id: _
    run: tools/_.cwl
    in:
      input: input
    out:
      - output
  - id: f
    run: tools/f.cwl
    in:
      input: input
    out:
      - output
  - id: r
    run: tools/r.cwl
    in:
      input: input
    out:
      - output
  - id: o
    run: tools/o.cwl
    in:
      input: input
    out:
      - output
  - id: m
    run: tools/m.cwl
    in:
      input: input
    out:
      - output
  - id: _
    run: tools/_.cwl
    in:
      input: input
    out:
      - output
  - id: a
    run: tools/a.cwl
    in:
      input: input
    out:
      - output
  - id: p
    run: tools/p.cwl
    in:
      input: input
    out:
      - output
  - id: i
    run: tools/i.cwl
    in:
      input: input
    out:
      - output
  - id: ':'
    run: tools/:.cwl
    in:
      input: input
    out:
      - output
  - id: ':'
    run: tools/:.cwl
    in:
      input: input
    out:
      - output
  - id: r
    run: tools/r.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: c
    run: tools/c.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: i
    run: tools/i.cwl
    in:
      input: input
    out:
      - output
  - id: v
    run: tools/v.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: _
    run: tools/_.cwl
    in:
      input: input
    out:
      - output
  - id: t
    run: tools/t.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: l
    run: tools/l.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: s
    run: tools/s.cwl
    in:
      input: input
    out:
      - output
  - id: c
    run: tools/c.cwl
    in:
      input: input
    out:
      - output
  - id: o
    run: tools/o.cwl
    in:
      input: input
    out:
      - output
  - id: p
    run: tools/p.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: _
    run: tools/_.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: f
    run: tools/f.cwl
    in:
      input: input
    out:
      - output
  - id: f
    run: tools/f.cwl
    in:
      input: input
    out:
      - output
  - id: i
    run: tools/i.cwl
    in:
      input: input
    out:
      - output
  - id: c
    run: tools/c.cwl
    in:
      input: input
    out:
      - output
  - id: i
    run: tools/i.cwl
    in:
      input: input
    out:
      - output
  - id: e
    run: tools/e.cwl
    in:
      input: input
    out:
      - output
  - id: n
    run: tools/n.cwl
    in:
      input: input
    out:
      - output
  - id: c
    run: tools/c.cwl
    in:
      input: input
    out:
      - output
  - id: y
    run: tools/y.cwl
    in:
      input: input
    out:
      - output
  - id: _
    run: tools/_.cwl
    in:
      input: input
    out:
      - output
  - id: d
    run: tools/d.cwl
    in:
      input: input
    out:
      - output
  - id: a
    run: tools/a.cwl
    in:
      input: input
    out:
      - output
  - id: t
    run: tools/t.cwl
    in:
      input: input
    out:
      - output
  - id: a
    run: tools/a.cwl
    in:
      input: input
    out:
      - output

requirements:
  SubworkflowFeatureRequirement: {}
  StepInputExpressionRequirement: {}
