#!/bin/bash

set -e
set -x
postslug=$1
if [ -z "${postslug}" ]; then
    echo "Usage: $0 <post-slug-name>"
    exit 1
fi

hugo new content content/posts/${postslug}
rm content/posts/${postslug}
mkdir -p content/posts/${postslug}
cp ./default-post-template.md content/posts/${postslug}/index.md
vim ${pwd}/content/posts/${postslug}/index.md

echo "Now put images in ${pwd}/content/posts/$1/ !"
echo "e.g. scp *.jpg david@hq.local:${pwd}/content/posts/$1/"

