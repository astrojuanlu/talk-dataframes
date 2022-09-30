#!/bin/bash

sudo apt-get update && sudo -E apt-get install -y --no-install-recommends unzip

mamba install -c conda-forge -y python-graphviz

pip install -r requirements.txt
