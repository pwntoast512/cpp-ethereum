#!/bin/bash

# Build Systems #
SRC=/home/cpp-ethereum
BUILDTREE=$SRC/build
BINDIR=$BUILDTREE/ethminer

$BINDIR/ethminer -v 9 \
--farm-recheck 400 \
-F \
http://192.168.1.77:8080/rig1
