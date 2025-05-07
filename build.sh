#!/bin/bash

ORDERED_MD_FILES=$(yq '.order[]' order.yaml | sed 's|^|content/|')
echo "Files:"
echo $ORDERED_MD_FILES

docker run --rm -v "$(pwd):/data" -u $(id -u):$(id -g) \
    pandoc/extra $ORDERED_MD_FILES -o "document.pdf" \
    --from markdown \
    --metadata-file metadata.yaml \
    --template eisvogel \
    --listings