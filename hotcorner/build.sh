#!/usr/bin/env bash

rm -rf "${DIR__BUILD}"/*

cd "${DIR__SRC}"
./configure --prefix="${DIR__BUILD}"
make && make install
