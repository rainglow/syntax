#!/bin/bash

# Run docker image to build the themes.
docker run -e PATTERN=syntax -v $PWD/output/:/src/output daylerees/rainglow:latest

# Kill old themes.
rm -rf ../themes/github/themes/*
rm -rf ../themes/highlightjs/themes/*
rm -rf ../themes/prism/themes/*

# Move themes to the root.
cp -R output/syntax/github/* ../themes/github/themes/
cp -R output/syntax/highlightjs/* ../themes/highlightjs/themes/
cp -R output/syntax/prism/* ../themes/prism/themes/

# Delete temp themes.
rm -rf output