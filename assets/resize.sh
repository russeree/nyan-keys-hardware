#!/bin/bash

# Desired width
WIDTH=1024

# Iterate over JPEG files in the current directory, resize, and strip metadata
for FILE in *.jpg; do
    convert "$FILE" -resize "${WIDTH}" -strip "$FILE"
done