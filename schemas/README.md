# Reference schema for simulation model parameters and derivation input data

This directory contains a descriptions of all simulation model parameters and of all input data required for the derivation of simulation model parameters.

The files are in [json-schema](https://json-schema.org/) and include (among others) name, type, format, applicable telescopes, and parameter description.

Files and directories:
- [model/](./model/): reference schema for all model parameters (one file per parameter)
- [input/](./input/): reference schema for all input data required by the derivation tools
- [jsonschema.yml](./jsonschema.yml): json schema for validation of all schema files 
