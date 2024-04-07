#!/bin/bash

mkdir -p build

# Run container with cwd mounted at /config
docker run -v .:/config lymone96/bt60-builder /bin/bash /config/radio-container-build.sh

