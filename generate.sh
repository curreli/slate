#!/bin/bash


SLATE_PATH=${HOME}/Code/Slate
WIDDERSHINS_PATH=${HOME}/Code/Widdershins

echo "Generating doc from '$1'"

bundle exec middleman server &
ls "$1" | entr -s "node \"${WIDDERSHINS_PATH}/widdershins\" --search false --summary \"$1\" -o \"${SLATE_PATH}/source/index.html.md\""