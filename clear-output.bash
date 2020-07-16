#!/bin/bash -v
find docs -type f -name "*.html" | xargs rm -f   # delete any existing *.html files
