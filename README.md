# kn-func-build

GitHub Action to build and publish a container image using the Knative func plugin.

## Usage

Building and publishing a function using `kn func`.

```yaml
name: Commit Stage

on: push

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Run Knative tools
        uses: qwpto/kn-func-build@v14
        with:
          registry_url: gcr.io/project-id
          registry_username: _json_key
          registry_token: ${{ secrets.REGISTRY_PASSWORD }}
          function_path: .
          function_name: examplefunc
          function_version: 3.9.4
```
