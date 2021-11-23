#!/bin/sh

latexmk -pdf *.tex
while [[ true ]]; do
    inotifywait -q *.tex | while read something; do
        echo "Rebuilding latex!"
        latexmk -pdf *.tex
    done
done
