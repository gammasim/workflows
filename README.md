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

## Graphs

Prepare a workflow graph, e.g.:
```
cwltool --print-dot ValidateArrayElementCoordinates.cwl | dot -Tsvg > ValidateArrayElementCoordinates.svg
```
