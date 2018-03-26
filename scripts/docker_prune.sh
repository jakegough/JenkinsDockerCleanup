docker system prune -af --filter "until=$(date --date='-30 days' --rfc-3339=date)"
