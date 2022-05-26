#!/bin/bash

sudo apt update && sudo -E apt install -y --no-install-recommends unzip

mamba install -c conda-forge -y python-graphviz

pip install -r requirements.txt
