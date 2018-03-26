set -x

docker system prune -af --filter "until=$(date --date='-14 days' --rfc-3339=date)"
