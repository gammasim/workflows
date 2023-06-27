# Workflows for simtools

## Introduction

CWL implementations of simtools workflows:

- workflows for setting and validation of parameters are in [./workflows](./workflows).
- command line tools used in these workflows and calling simtools applications are in [./workflows/tools](./workflows/tools).

## Getting started

Clone workflows:
```
git clone git@github.com:gammasim/workflows.git
```

Install dependencies using mamba or conda:
```
mamba env create -f environment.yml
conda activate simtools-workflows-dev
```

## Running examples

The following command line tool converts telescope coordinates from UTM to CORSIKA coordinates.
```
cwltool tools/derive_array_elements_coordinates.cwl examples/example_derive_array_elements_coordinates.yml
```

## CWL validation

Use `cwltool --validate file_name.cwl` to check a workflow or command line tool for valid CWL.

## Graphs

Prepare a workflow graph, e.g.:
```
cwltool --print-dot ValidateArrayElementCoordinates.cwl | dot -Tsvg > ValidateArrayElementCoordinates.svg
```

Alternatively, use https://view.commonwl.org/ , e.g., see [this example](https://view.commonwl.org/workflows/github.com/gammasim/workflows/blob/first-example/workflows/SetArrayElementCoordinates.cwl).
