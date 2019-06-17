#!/usr/bin/env bash
set -x 
set -e 

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update || true
sudo apt install python3.7
python3.7 --version
