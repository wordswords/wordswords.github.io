#!/bin/zsh

set -e
set -x

hugo --gc --config ./hugo.yaml
hugo server --bind 0.0.0.0 --buildDrafts --config ./hugo.yaml --disableFastRender

