#!/usr/bin/env bash
# From https://github.com/astrojuanlu/orchest-vaex/blob/main/fetch-data.sh
# Linted with https://www.shellcheck.net/

export KAGGLE_USERNAME=$KAGGLE_API_USERNAME
export KAGGLE_KEY=$KAGGLE_API_KEY
export DATA_DIR=/data/airline-delays

mkdir -p $DATA_DIR
if [ "$(find $DATA_DIR -name '*.csv' -type f -printf '.' | wc -c)" != "10" ]
then
    kaggle datasets download yuanyuwendymu/airline-delay-and-cancellation-data-2009-2018 -p $DATA_DIR --unzip
fi
