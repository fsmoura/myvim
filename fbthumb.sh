#!/bin/bash

FILENAME=${1%.*}
SIZE="500x262"

if exiftool -all= $1 &>>/dev/null; then
  echo "Metadata removida"
  rm *_original &>>/dev/null
fi

convert $1 -thumbnail "${SIZE}"^ -gravity center -extent "${SIZE}" "${FILENAME}-thumb-${a}.jpg"

