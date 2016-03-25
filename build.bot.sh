#!/bin/bash

# Build Systems #
SRC=/home/cpp-ethereum
BUILDTREE=$SRC/build

rm -rf $BUILDTREE
mkdir -p $BUILDTREE
cd $BUILDTREE && cmake $SRC
cd $BUILDTREE && make
