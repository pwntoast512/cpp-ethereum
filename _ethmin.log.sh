#!/bin/bash
# Define a timestamp function
timestamp() {
	date +"%Y%m%d%H%M%S"
}

SRC=/home/cpp-ethereum
trials_logs=/mnt/nfs/System/trials
filename=$trials_logs/ethmin-trials-$(timestamp).txt

cd $SRC && sh $SRC/_ethmin.sh \
2>&1 \
| tee -a $filename
