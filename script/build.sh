#!/bin/bash

. ./script/util.sh

rm -rf ./output
mkdir -p ./output/bin
mkdir -p ./output/log

# build
for f in ${frameworks[@]}; do
    echo "build ${f} ..."
    go build -o "./output/bin/${f}.server" "./frameworks/${f}"
    echo "build ${f} done"
    echo
done
echo "build client ..."
go build -o "./output/bin/bench.client" "./client"
echo "build client done"
