# Workflows for simtools

## Introduction

CWL implementations of simtools workflows.

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

The following command line tool converts telescope coordinates from UTM to coorsika coordinates.
``
cwltool methods/derive_array_elements_coordinates.cwl examples/example_derive_array_elements_coordinates.yml
```

## CWL validation

Use `cwltool --validate file_name.cwl` to check a workflow or command line tool for valid cwl.

## Graphs

Prepare a workflow graph, e.g.:
```
cwltool --print-dot ValidateArrayElementCoordinates.cwl | dot -Tsvg > ValidateArrayElementCoordinates.svg
```

Alternatively, use https://view.commonwl.org/ , e.g., see [this example](https://view.commonwl.org/workflows/gitlab.desy.de/gernot.maier/cwlsandbox.git/f332d88efea2e73668479a9579c056a3f4d81bb5/workflows/SetArrayElementCoordinates.cwl).
