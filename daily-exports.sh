#!/bin/sh

UPATH="http://files.tmdb.org/p/exports/"
FILES="movie_ids_ tv_series_ids_ person_ids_ collection_ids_ tv_network_ids_ keyword_ids_ production_company_ids_"

if [ -z "$1" ]; then
	DATE="09_23_2018"
else
	DATE="$1"
fi

for f in ${FILES}; do
	wget "${UPATH}${f}${DATE}.json.gz"
	gunzip "${f}${DATE}.json.gz"
done
