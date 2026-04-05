# HEARTBEAT.md — Reddit Reply Guy

## Schedule

- Every 6 hours: scan target subreddits, reply to up to 3 posts

## Check

1. Any errors in last run? (`tail -10 logs/reddit-reply-guy.log`)
2. Reply count today within limits? (max 3/subreddit/day)
3. Any shadow-ban signals? (replies not showing up)

## Alert if

- 0 replies in 48 hours (scanner broken or no signal)
- Same post replied to twice (dedup bug)
- Account flagged or shadow-banned

## Stay quiet if

- Ran clean, replies posted, no errors
