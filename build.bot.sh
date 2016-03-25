#!/bin/bash

# Build Systems #
SRC=/home/cpp-ethereum
BUILDTREE=$SRC/build

rm -rf $BUILDTREE
mkdir -p $BUILDTREE
cd $BUILDTREE && CC=icc CXX=icpc CXXFLAGS="-std=c++11 -wd597" BOOST_ROOT=/home/boost_1_49_0/ Boost_NO_SYSTEM_PATHS=ON cmake $SRC
cd $BUILDTREE && make
