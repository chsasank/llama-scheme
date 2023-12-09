#!/bin/bash
set -e
cd "$(dirname "$0")"


# make chicken scheme
cp -r ../libs/chicken-scheme/ chicken-scheme/
pushd chicken-scheme
make -j12
popd

# make llama2.c
cp -r ../libs/llama2.c/ llama2.c/
pushd llama2.c
make run -j12
popd

# make llama.cpp
cp -r ../libs/llama.cpp/ llama.cpp/
pushd llama.cpp
make -j12
popd
