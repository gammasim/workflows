# Reference schema for simulation model parameters and derivation input data

This directory contains a descriptions of all simulation model parameters and of all input data required for the derivation of simulation model parameters.

The files are in [json-schema](https://json-schema.org/) and include (among others) name, type, format, applicable telescopes, and parameter description.

Files and directories:
- [schema/](./): reference schemas for all model parameters (one file per parameter) and input data required by the derivation tools
- [schema/jsonschema.yml](./jsonschema.yml): json schema for validation of all schema files

## Technical notes

For easy generation of json schema files from yaml example, see https://codebeautify.org/yaml-to-json-schema-generator
