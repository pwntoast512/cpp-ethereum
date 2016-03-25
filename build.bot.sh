#!/bin/bash

# Build Systems #
SRC=/home/cpp-ethereum
BUILDTREE=$SRC/build

rm -rf $BUILDTREE
mkdir -p $BUILDTREE
cd $BUILDTREE && CC=icc CXX=icpc cmake $SRC
cd $BUILDTREE && make
