# HEARTBEAT.md — Social Media Manager

## Schedule

- Every 6 hours: scan X for relevant conversations, post 1 original tweet, reply to up to 2
- On "shipped" tweets: capture product screenshot and attach

## Check

1. Is x_engage.py running via cron? `crontab -l | grep x_engage`
2. Check log for errors: `tail -20 scripts/x_engage.log`
3. If cookie error: Chrome session expired — open browser and log into X

## Alert if

- 3+ consecutive runs with 0 posts (cookie error or script broken)
- Same tweet posted twice in a row
- No replies in 24 hours (search returning 0 results)

## Stay quiet if

- Last run was clean (posted=1, no errors)
- Nothing new to flag
