#!/bin/bash

rm -rf docs

asciidoctor  -D docs  -R src 'src/**/*.adoc'

git add .
git commit --all -m'misc' ; git push

