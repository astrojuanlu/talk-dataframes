#!/usr/bin/env bash
# Linted with https://www.shellcheck.net/

export DATA_DIR=/data/nyc-taxi

mkdir -p $DATA_DIR
if [ "$(find $DATA_DIR -name '*.csv' -type f -printf '.' | wc -c)" != "1" ]
then
    wget -v "https://s3.amazonaws.com/nyc-tlc/csv_backup/yellow_tripdata_2015-01.csv" -O "${DATA_DIR}/yellow_tripdata_2015-01.csv"
fi
