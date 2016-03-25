#!/bin/bash

# Build Systems #
SRC=/home/cpp-ethereum
BUILDTREE=$SRC/build
BINDIR=$BUILDTREE/libethereum/ethminer

$BINDIR/ethminer -v 9 \
--farm-recheck 400 \
--cl-global-work 16384 \
--cl-local-work 256 \
-G -F \
http://192.168.1.77:8080/rig1
