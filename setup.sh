#!/bin/bash

pip install -r requirements.txt
playwright install
playwright install-deps
sudo apt upgrade -y
pip install --upgrade git+https://github.com/huggingface/transformers.git@336dc69d63d56f232a183a3e7f52790429b871ef
pip install vllm --pre --extra-index-url https://wheels.vllm.ai/nightly
pip install qwen-vl-utils[decord]==0.0.8
mkdir models