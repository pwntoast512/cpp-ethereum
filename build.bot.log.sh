#!/bin/bash
# Define a timestamp function
timestamp() {
	date +"%Y%m%d%H%M%S"
}

SRC=/home/cpp-ethereum
build_logs=/mnt/nfs/System/build_logs
filename=$build_logs/cpp-ethereum-build_bot-$(timestamp).txt

cd $SRC && sh $SRC/build.bot.sh \
2>&1 \
| tee -a $filename
