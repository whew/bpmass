#!/bin/bash
git submodule init
git submodule update
cd opuscomment
./build.sh release
cd ..
cd bpm-tools
make

