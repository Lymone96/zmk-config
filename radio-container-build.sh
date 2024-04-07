#!/bin/bash

if [ "root" != $(whoami) ]
then 
	echo "You should be running radio-build.sh, this is called automatically from the docker container"
	exit 1
fi

# Go to build directory
cd /workspace

# Copy new keymap
cp /config/config/bt60.keymap config/ || exit 1

# Build firmware
west build -s zmk/app -b bt60 -- -DZMK_CONFIG="$(pwd)/config"

# Copy output firmware
cp build/zephyr/zmk.uf2 /config/build

