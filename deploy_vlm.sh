#!/bin/bash

MODEL_NAME="/home/ubuntu/workspace/web-ui/models/Qwen2.5-VL-7B-Instruct"
# MODEL_NAME="unsloth/mistral-7b-instruct-v0.3"
MAX_MODEL_LEN=65000
ENFORCE_EAGER="--enforce-eager" #to stop CUDA graphs from consuming memory
GPU_MEMORY_UTILIZATION=0.99 # GPU memory to use default is 0.9, or 90%
TENSOR_PARALLEL_SIZE=2
ENABLE_PREFIX_CACHING="--enable-prefix-caching" # prompt cache

# CPU_OFFLOAD_GB=20 # --cpu-offload-gb $CPU_OFFLOAD_GB \
DEVICE="auto" # {auto,cuda,neuron,cpu,openvino,tpu,xpu}

PORT=8001
# API_KEY=hivegpt #     --api-key $API_KEY

vllm serve \
    $MODEL_NAME \
    --max-model-len $MAX_MODEL_LEN \
    $ENFORCE_EAGER \
    --gpu-memory-utilization $GPU_MEMORY_UTILIZATION \
    --port $PORT \
    --tensor-parallel-size $TENSOR_PARALLEL_SIZE \
    --device $DEVICE\
    $ENABLE_PREFIX_CACHING


