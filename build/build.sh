#!/bin/bash
cd "$(dirname "$0")"


# make chicken scheme
rm -rf chicken-scheme
cp -r ../libs/chicken-scheme chicken-scheme
pushd chicken-scheme
make
popd chicken-scheme

# # make llama2.c
# cp -r ../libs/llama2.c llama2.c
# pushd llama2.c
# make run
# popd