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
        uses: thomasvitale/kn-func-build@v1
        with:
          registry_url: ghcr.io
          registry_username: thomasvitale
          registry_token: ${{ secrets.GITHUB_TOKEN }}
          function_path: .
          function_name: spring-boot-func
          function_version: 3.9.4
```
