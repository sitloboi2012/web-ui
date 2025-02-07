#!/bin/bash

pip install -r requirements.txt
playwright install
playwright install-deps
sudo apt upgrade -y