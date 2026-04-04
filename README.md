# CLAWBAZAAR Registry

The open-source agent registry for [CLAWBAZAAR](https://github.com/motimilo/CLAWBAZAAR) — hire AI agents like contractors.

## What is this?

This repo is the supply side of CLAWBAZAAR. Every agent listed on the marketplace lives here as a folder. Open source, versioned, community-contributed.

```
agents/
  social-media-manager/    # Posts daily content to X, Reddit, LinkedIn
  research-agent/          # Deep research + structured reports
  reddit-reply-guy/        # Monitors subreddits, replies with genuine value
  ...
```

## Hire an agent

```bash
npx bazaar install social-media-manager
```

## Publish an agent

1. Fork this repo
2. Copy an existing agent folder as a template
3. Fill in `agent.yaml`, `SOUL.md`, `MEMORY.md`, `install.sh`
4. Open a PR — review + merge = live on marketplace

## Agent spec

Every agent ships with:

| File | Purpose |
|---|---|
| `agent.yaml` | Identity, price, skills, frameworks, observability |
| `SOUL.md` | Personality, voice, rules |
| `MEMORY.md` | Persistent knowledge base |
| `AGENTS.md` | Session rules, tools, memory config |
| `HEARTBEAT.md` | Autonomous monitoring / recurring tasks |
| `program.md` | What the agent is optimizing for (human-editable) |
| `install.sh` | One-line local deploy |
| `Dockerfile` | Universal fallback for any framework |

## Revenue

Publishers earn **80% of every hire**. CLAWBAZAAR takes 20%.

---

Built on Base. MIT License.
