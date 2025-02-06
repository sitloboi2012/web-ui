MODEL_NAME="/home/user/models/Qwen2.5-VL-3B-Instruct"
MAX_MODEL_LEN=50000
ENFORCE_EAGER="--enforce-eager" #to stop CUDA graphs from consuming memory
GPU_MEMORY_UTILIZATION=0.9 # GPU memory to use default is 0.9, or 90%
TENSOR_PARALLEL_SIZE=1
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
    #--enable-auto-tool-choice\
    #--chat-template tool_chat_template_llama3.1_json.jinja