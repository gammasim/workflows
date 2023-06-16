name: CWL Linting

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  lint:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v3

      - name: Set up Python
        uses: actions/setup-python@v3
        with:
          python-version: 3.x

      - name: Install CWLTool
        run: pip install cwltool

      - name: Lint CWL Files
        run: |
          find ./workflows -name "*.cwl" -print0 | xargs -0 -I {} cwltool --validate {}
