#!/bin/bash

# Build Systems #
SRC=/home/cpp-ethereum
BUILDTREE=$SRC/build

rm -rf $BUILDTREE
mkdir -p $BUILDTREE
cd $BUILDTREE && CC=icc CXX=icpc CXXFLAGS="-std=c++11 -Wall -Wno-unknown-pragmas -Wextra -Wno-error=parentheses -pedantic -DSHAREDLIB -fPIC  -fuse-ld=gold -wd597" cmake $SRC
cd $BUILDTREE && make
