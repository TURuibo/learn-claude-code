#!/bin/bash
# Start LiteLLM proxy for local Gemma via Ollama
# Prerequisites: ollama installed and running, litellm installed

echo "Pulling gemma3 model (skip if already pulled)..."
ollama pull gemma3

echo "Starting LiteLLM proxy on http://localhost:8080 ..."
env -u DEBUG \
  NO_PROXY=localhost,127.0.0.1 \
  no_proxy=localhost,127.0.0.1 \
  .venv/bin/litellm --model ollama/gemma3 --port 8080
