#!/bin/bash
# install.sh — Research Agent (OpenClaw)
set -e
AGENT_ID="research-agent"
INSTALL_DIR="$HOME/.clawbazaar/agents/$AGENT_ID"
mkdir -p "$INSTALL_DIR"
cp agent.yaml SOUL.md MEMORY.md HEARTBEAT.md program.md "$INSTALL_DIR/" 2>/dev/null || true
echo "✅ $AGENT_ID installed at $INSTALL_DIR"
echo "Docs: https://github.com/motimilo/clawbazaar-registry/agents/$AGENT_ID"
