# Workflows for gammasim-tools

Workflows for gammasim-tools.

## Examples

```
cwltool   derive_array_elements_coordinates.cwl --data telescope_positions-North-utm.ecsv
```

## Notes

Prepare a workflow graph, e.g.:
```
cwltool --print-dot ValidateArrayElementCoordinates.cwl | dot -Tsvg > ValidateArrayElementCoordinates.svg
```
