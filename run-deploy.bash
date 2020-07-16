#!/bin/bash -v

rm -rf docs
rsync -a docs-tmpl/ docs 

asciidoctor  -D docs  -R src 'src/**/*.adoc'

git add .
git commit  --all  -m'misc'  ;  git push

