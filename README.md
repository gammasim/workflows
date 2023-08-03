# Workflows for simtools

## Introduction

CWL implementations of simtools workflows:

- workflows for setting and validation of parameters are in [./workflows](./workflows).
- command line tools used in these workflows and calling simtools applications are in [./workflows/tools](./workflows/tools).
- input and generated data is validated using schemas located in [./schemas](./schemas).

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
cwltool DeriveArrayElementCoordinates.cwl ../tests/resources/test_derive_array_elements_coordinates.yml
```
The workflow steps are:
- assert input data
- convert coordinates
- assert derive parameter values

(see the log files produced)

## CWL validation

Use `cwltool --validate file_name.cwl` to check a workflow or command line tool for valid CWL.

## Graphs

Prepare a workflow graph, e.g.:
```
cwltool --print-dot DeriveArrayElementCoordinates.cwl | dot -Tsvg > DeriveArrayElementCoordinates.cwl.svg
```

Alternatively, use https://view.commonwl.org/ , e.g., see [this example](https://view.commonwl.org/workflows/github.com/gammasim/workflows/blob/prototype-DeriveArrayElementCoordinates/workflows/DeriveArrayElementCoordinates.cwl).
