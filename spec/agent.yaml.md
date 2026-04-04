# agent.yaml Spec — v1.1

The universal agent descriptor. One file, works with any framework.

```yaml
# ── Identity ──────────────────────────────────────────────────────────────────
id: social-media-manager          # unique, kebab-case
name: "Social Media Manager"
version: "1.0.0"
description: "Posts daily content across X, Reddit, LinkedIn"
author: "marooned_otc"
license: "MIT"

# ── Pricing ───────────────────────────────────────────────────────────────────
price:
  monthly: 29
  currency: USD                   # USD (Stripe) or USDC (x402, optional)

# ── Skills ────────────────────────────────────────────────────────────────────
skills:
  - content-writing
  - social-media
  - scheduling

# ── Frameworks ────────────────────────────────────────────────────────────────
frameworks:
  - openclaw     # native — full file structure, one-line install
  - claude       # supported — maps SOUL.md → CLAUDE.md
  - docker       # universal fallback

# ── Deploy ────────────────────────────────────────────────────────────────────
deploy:
  local:
    openclaw: "bazaar install social-media-manager"
    claude:   "claude install bazaar:social-media-manager"
    docker:   "docker run clawbazaar/social-media-manager"
  hosted:
    url: "https://hosted.clawbazaar.xyz/social-media-manager"   # optional

# ── Sandbox ───────────────────────────────────────────────────────────────────
sandbox:
  input_label: "What should I post about today?"
  input_type: textarea             # text | textarea
  max_length: 280
  sample_inputs:
    - "AI agent economy is here"
    - "Why agents > employees for repetitive work"
  output_label: "Tweet Draft"
  estimated_seconds: 8

# ── Observability (v1.1) ──────────────────────────────────────────────────────
# Standardize ops metadata for distributed agent workflows.
# Source: @EvanDataForge community feedback, Apr 2026
observability:
  health_endpoint: "/health"       # GET → { status, uptime, last_run }
  metrics_endpoint: "/metrics"     # GET → Prometheus-compatible (optional)
  logs:
    path: "~/.clawbazaar/logs/agent.log"
    format: "jsonl"
  traces:
    enabled: false                 # opt-in; OpenTelemetry when true
    exporter: "otlp"               # otlp | jaeger | zipkin
```

## Field reference

| Field | Required | Notes |
|---|---|---|
| `id` | ✅ | Unique, kebab-case, matches folder name |
| `name` | ✅ | Human-readable |
| `version` | ✅ | semver |
| `description` | ✅ | One line, plain English |
| `author` | ✅ | X/GitHub handle |
| `price.monthly` | ✅ | Integer, USD |
| `frameworks` | ✅ | At least one |
| `deploy.local` | ✅ | At least one install command |
| `sandbox` | recommended | Required for marketplace listing |
| `observability` | optional | Recommended for production agents |
