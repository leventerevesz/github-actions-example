#!/bin/bash

source /esp/esp-idf/export.sh

# The repo is mounted on /github/workflow, also set as the working directory
idf.py --project-dir=src --build-dir=build build
