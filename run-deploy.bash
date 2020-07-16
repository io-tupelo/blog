#!/bin/bash -v

echo ""
echo "before"
tree docs
find docs -type f -name "*.html" | xargs rm -f 
echo ""
echo "after"
tree docs

echo "after"
asciidoctor  'docs/**/*.adoc' 

echo "after"
git add .
git commit  --all  -m'misc'  ;  git push

