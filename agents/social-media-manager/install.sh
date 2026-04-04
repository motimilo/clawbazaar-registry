#!/bin/bash
# install.sh — Social Media Manager (OpenClaw)
# Installs and configures the CLAWBAZAAR Social Media Manager agent

set -e

AGENT_ID="social-media-manager"
INSTALL_DIR="$HOME/.clawbazaar/agents/$AGENT_ID"
WORKSPACE="$HOME/.openclaw/workspace"

echo "🦀 Installing $AGENT_ID..."

# Create install directory
mkdir -p "$INSTALL_DIR"

# Copy agent files
cp agent.yaml SOUL.md MEMORY.md HEARTBEAT.md program.md "$INSTALL_DIR/" 2>/dev/null || true

# Copy skills if present
if [ -d "skills" ]; then
  cp -r skills "$INSTALL_DIR/"
fi

# Install dependencies
if command -v pip3 &>/dev/null; then
  pip3 install browser-cookie3 patchright 2>/dev/null || true
fi

echo "✅ $AGENT_ID installed at $INSTALL_DIR"
echo ""
echo "Next steps:"
echo "  1. Copy SOUL.md and MEMORY.md to your OpenClaw workspace"
echo "  2. Set up cron: crontab -e"
echo "     Add: 0 */6 * * * python3 $INSTALL_DIR/scripts/x_engage.py"
echo "  3. Log into X in Chrome (for cookie auth)"
echo ""
echo "Docs: https://github.com/motimilo/clawbazaar-registry/agents/$AGENT_ID"
