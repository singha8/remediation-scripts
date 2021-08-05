#!/bin/bash

CACHE_DIR=~/Library/Caches/Firefox/Profiles

if [ ! -d $CACHE_DIR ]
then
    echo "Could not find cache dir"
    exit 0
fi

if [ ! "$(ls -A $CACHE_DIR)" ]
then
    echo "Cache dir is empty"
    exit 0
fi

killall firefox
for dir in "$CACHE_DIR"/*/; do
    rm -r $dir
done
