#!/bin/bash
find . -type f -size +5M | while read filename; do
    git lfs track "$filename"
    echo "$filename" >> .gitattributes
done
