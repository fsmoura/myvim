#!/bin/bash

FILENAME=${1%.*}
SIZES=(32 64 128)

if exiftool -all= $1 &>>/dev/null; then
	echo "Metadata removida"
	rm *_original &>>/dev/null
fi

FOLDER="$(date +'%Y%m%d')/$(echo $FILENAME |md5sum |head -c 25)"

mkdir -p "${FOLDER}"

for a in ${SIZES[@]}; do
	if convert $1 -thumbnail "${a}"x"${a}"^ -gravity center -extent "${a}"x"${a}" -quality 60  "${FOLDER}"/"${FILENAME}"-thumb-"${a}".jpg; then
		echo "[ok] thumb ${a}px criada com sucesso"
	fi
done


