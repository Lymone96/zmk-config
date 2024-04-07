#!/bin/bash

# Run container with cwd mounted at /config
docker run -v .:/config 7fbac20591e9 /bin/bash /config/radio-container-build.sh

