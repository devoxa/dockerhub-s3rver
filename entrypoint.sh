#!/bin/sh
set -x

./node_modules/.bin/s3rver -a 0.0.0.0 -p 4568 -d /data $ARGS
