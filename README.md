# pandoc-latex-docker

This repo reference the command from [pandoc-latex-template](https://github.com/Wandmalfarbe/pandoc-latex-template).

## How to use template

Prerequisites
- Docker
- yq


Edit content in content directory, edit the order.yaml if needed, also edit the metadata.yaml. `order.yaml` determines the order of the markdown files when they're being compile.

```bash
./build.sh
```