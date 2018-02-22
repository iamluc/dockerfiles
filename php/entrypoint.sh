#!/bin/bash
set -e

# Change user uid & guid to be the same as mounter directory
usermod -u `stat -c %u /app` app || true
groupmod -g `stat -c %g /app` app || true

gosu app "$@"
