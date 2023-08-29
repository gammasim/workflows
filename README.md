# Workflows for simtools

## Introduction

CWL implementations of workflows for the CTA Simulation Pipeline.

Workflows are used to set, derive, and validate simulation model parameters following all or a subset of these steps:

Setting Workflows:

1. Receive: data or parameter update through an API.
2. Assert: verify that input data or parameters are in correct units, formats, allowed ranges, etc.
3. Derive: derive simulation model parameter from received data (not applicable to all input data).
4. Validate: validate updated simulation model parameter (e.g., by comparison with measurements).
5. Review: review of updates to simulation model parameter(s) and validation steps (by expert; in some cases automatized).

Acceptance Workflows:

1. Feedback: provide feedback on validation and review (successful / unsuccessful validation).
2. Update DB: update simulation model database with new parameter (successful validation).
3. Document: document all derivation and validation steps.

The implementation in *simtools-workflows* consist of the following main components:

- **workflows** encoded in [Common Workflow Language (CWL)](https://www.commonwl.org/) (see [./workflows](./workflows) in this repository)
- **parameter schemas** defining all input data and simulation model parameters (see [./schemas](./schemas) in this repository)

The workflows are using **simulation tools and software** consisting of [simtools](https://github.com/gammasim/simtools) and the simulation software (e.g., [CORSIKA](https://www.iap.kit.edu/corsika/) and [sim_telarray](https://www.mpi-hd.mpg.de/hfm/~bernlohr/sim_telarray/)).

## Workflows and tools

CWL workflows consists of

- *Tools* are called by *steps* in a *Workflow* and are doing one single task. In most cases, tools are calling an application of [simtools](https://github.com/gammasim/simtools) including all required configuration parameters (e.g., [workflows/tools/derive_array_elements_coordinates.cwl](workflows/tools/derive_array_elements_coordinates.cwl)).
- *Workflows* connect *tools*, and allow to execute the steps discussed above (receive, assert, derive, validate, ...), see.e.g, [workflow/DeriveArrayElementCoordinates.cwl](./workflows/DeriveArrayElementCoordinates.cwl).

## Parameter and input data schema files

The parameter schema files are used to describe all input data and simulation model parameters and can be found in [./schemas](./schemas) in this repository.

See the [Guide to the Simulation Model Parameter File Schema](./schemas/README.md) for details.

## Using workflows

### Getting started

Clone the [simtools workflows](https://github.com/gammasim/workflows) repository and install dependencies using mamba or conda:

```bash
git clone git@github.com:gammasim/workflows.git
mamba env create -f environment.yml
mamba activate simtools-workflows-dev
```

All examples require docker to be installed and running.
Tools are using the [simtools-prod:latest](https://github.com/gammasim/simtools/pkgs/container/simtools-prod) docker image.

### Workflow examples

#### Simple workflow (no database access required)

The following command line tool converts telescope coordinates from UTM to CORSIKA coordinates.

```bash
cwltool DeriveArrayElementCoordinates.cwl ../tests/resources/test_derive_array_elements_coordinates.yml
```

The workflow steps executed are:

- assert input data (as defined in the configuration file; in this example in [tests/resources/test_derive_array_elements_coordinates.yml](./tests/resources/test_derive_array_elements_coordinates.yml))
- convert coordinates
- assert derived parameter values

Expected output:

- telescope position file in CORSIKA coordinates (ecsv format)
- metadata files describing each workflow step (yml format)
- log files (stdout and stderr; ascii format)

#### Workflow with database access

To run workflows which require access to the model database, use the following commands:

```bash
cwltool --custom-net bridge \
    --preserve-environment DB_API_PORT \
    --preserve-environment DB_SERVER \
    --preserve-environment DB_API_USER \
    --preserve-environment DB_API_PW \
    --preserve-environment DB_API_AUTHENTICATION_DATABASE  \
    SetMirrorPanelRandomReflection.cwl ../tests/resources/test_derive_mirror_panel_rnda.yml
```

The environmental variables are used to configure the database connection (see [simtools](https://gammasim.github.io/simtools/getting_started.html)).

## Implemented workflows available for testing

The following workflows are implemented and available for testing:

- [DeriveArrayElementCoordinates.cwl](./workflows/DeriveArrayElementCoordinates.cwl): derive telescope coordinates from array element IDs
- [SetMirrorRandomReflection.cwl](./workflows/SetMirrorRandomReflection.cwl): derive random reflection for all mirrors in a telescope

## Writing and testing workflows

### CWL validation

Use `cwltool --validate file_name.cwl` to check a workflow file or command line tool for valid CWL code (this is also done by the [CI](.github/workflows/linter.yml)).

### Workflow Graphs

Prepare a workflow graph, e.g.:

```bash
cwltool --print-dot DeriveArrayElementCoordinates.cwl | dot -Tsvg > DeriveArrayElementCoordinates.cwl.svg
```

Alternatively, use https://view.commonwl.org/ , e.g., see [this example](https://view.commonwl.org/workflows/github.com/gammasim/workflows/blob/main/workflows/DeriveArrayElementCoordinates.cwl)

## Developer Notes

Following notes are unsorted, and possibly useful for the implementation of new workflows:

- capture stdout of tools by using `cwltool --log-dir ./my-log-dir...` . This allows to find errors generated by the tools (otherwise reported errors are mostly that output is not found).
- allow containers in tools to access network: use `cwltool --custom-net bridge...` and add `NetworkAccess: networkAccess: true` to the tool requirements.
- set environmental variables (propagated into containers) with `cwltool --preserve-environment DB_API_PORT --preserve-environment DB_SERVER ...`
