#!/bin/bash -v

find docs -type f -name "*.html" | xargs rm -f   # delete any existing *.html files

asciidoctor  'docs/**/*.adoc'   # use `asciidoctor` convert `*.adoc` files => *`.html`

# commit all changes into git, then push to GitHub
git add .
git commit  --all  -m'misc'  
git push

