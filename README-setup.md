# Setup Web-UI for Browser Use

This is the note for Cohere for AI team member

This setup assume that you are using a Linux machine. For other OS, please refer to the `setup.sh` and modify based on that, you should mainly fixing the problem `sudo apt upgrade -y` for this problem, the rest should be the same

1. Setup miniconda or any tools for virtual environment management (venv, conda, uv)
2. Clone this repo
3. Check file `setup.sh` based on your OS
4. Run `bash setup.sh` to setup the environment
5. Run `python webui.py` to start the web-ui

To use OpenAI model, please refer and update straight onto the UI

To use vLLM model, you can use `download_model.py` to help you download the model that you want, and use `deploy_vlm.sh` to deploy the model to certain VM and port