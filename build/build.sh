#!/bin/bash
cd "$(dirname "$0")"


# make chicken scheme
rm -rf chicken-scheme
cp -r ../libs/chicken-scheme chicken-scheme
pushd chicken-scheme
make
pop chicken-scheme