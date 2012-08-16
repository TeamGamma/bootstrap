#!/bin/bash
set -e

BOOTSTRAP=$(dirname $0)
BASE_LESS_FILE=$BOOTSTRAP/less/bootstrap.less
OUTPUT_CSS_FILE=$BOOTSTRAP/css/bootstrap.css
OUTPUT_FOLDER=$BOOTSTRAP/../hub/bootstrap

echo Compiling $BASE_LESS_FILE
lessc $BASE_LESS_FILE > $OUTPUT_CSS_FILE

echo Copying over to $OUTPUT_FOLDER
mkdir -p $OUTPUT_FOLDER/css $OUTPUT_FOLDER/img $OUTPUT_FOLDER/js
cp $BOOTSTRAP/css/*.css $OUTPUT_FOLDER/css/
cp $BOOTSTRAP/img/* $OUTPUT_FOLDER/img/
cp $BOOTSTRAP/js/*.js $OUTPUT_FOLDER/js/

echo done
