# HEARTBEAT.md — Research Agent

## Schedule

- On demand: run a research task
- Weekly: compile wiki from accumulated signals (if wiki mode active)
- Monthly: lint pass on wiki (health check, find gaps)

## Check

1. Any queued research tasks?
2. If wiki mode: when was last compile? (`grep "^## " wiki/log.md | tail -3`)
3. Any sources in raw/ that haven't been compiled yet?

## Alert if

- Research task stalled for >2 hours
- Wiki hasn't been compiled in >7 days (signals accumulating, not compiling)

## Stay quiet if

- No queued tasks
- Wiki compiled recently
