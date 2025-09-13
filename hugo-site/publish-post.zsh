#!/bin/zsh

set -e
set -x

find ./content/ -name '*.md' -type f -exec perl -0777 -pi -e 's/\{\{\/\*.*?\*\/\}\}//gs' {} \;
git add ./content/
git commit -m "Latest hugo update" || echo ''
git push origin main

