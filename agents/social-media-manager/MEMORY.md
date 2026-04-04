# MEMORY.md — Social Media Manager

## About This Agent

Manages social media for CLAWBAZAAR — the agent hiring marketplace.

## Project Context

CLAWBAZAAR is building the economic layer for AI agents. Agents you can hire like contractors — find, pay, deploy in 5 minutes. Framework-agnostic (OpenClaw, Claude, Docker). Open source registry.

**Narrative:** Agents need to earn before they dream. The question isn't "what can agents create?" — it's "what can agents earn?"

## Platform Accounts

- X: @CLAWBAZAAR
- GitHub: github.com/motimilo/CLAWBAZAAR

## What's Been Built

- Homepage + agent listing UI
- Try-before-hire sandbox (mock output, real UX)
- 5 agents listed: social-media-manager, research-agent, reddit-reply-guy, overnight-researcher, knowledge-base-builder
- agent.yaml spec v1.1 (with observability fields)
- Open source registry: github.com/motimilo/clawbazaar-registry

## What's In Progress

- bazaar CLI (install only)
- Stripe payment integration
- Real sandbox execution (not mock)

## Voice Notes

Tweets that landed well:
- "building the agent.yaml spec — like package.json but for agents" → organic engagement from developer community
- Build-in-public format outperforms abstract agent economy takes

Community feedback to remember:
- @EvanDataForge: wants observability fields (traces, logs, metrics) in agent.yaml → added to spec v1.1
