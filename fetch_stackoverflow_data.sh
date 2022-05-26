#!/usr/bin/env bash
# From https://github.com/astrojuanlu/orchest-polars/blob/master/fetch-data.sh
# Linted with https://www.shellcheck.net/

export KAGGLE_USERNAME=$KAGGLE_API_USERNAME
export KAGGLE_KEY=$KAGGLE_API_KEY
export DATA_DIR=/data/stacksample

mkdir -p $DATA_DIR
if [ "$(find $DATA_DIR -name '*.csv' -type f -printf '.' | wc -c)" != "2" ]
then
    # Individual files require unzipping,
    # see https://github.com/Kaggle/kaggle-api/pull/336
    kaggle datasets download stackoverflow/stacksample -f Tags.csv -p $DATA_DIR
    unzip "${DATA_DIR}/Tags.csv" -d "${DATA_DIR}"
    rm "${DATA_DIR}/Tags.csv.zip"

    kaggle datasets download stackoverflow/stacksample -f Questions.csv -p $DATA_DIR
    unzip "${DATA_DIR}/Questions.csv" -d "${DATA_DIR}"
    rm "${DATA_DIR}/Questions.csv.zip"
fi
