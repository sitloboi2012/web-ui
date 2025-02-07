#!/bin/bash

pip install -r requirements.txt
playwright install
playwright install-deps
sudo apt upgrade -y
pip install git+https://github.com/huggingface/transformers.git
pip install vllm --pre --extra-index-url https://wheels.vllm.ai/nightly
mkdir models