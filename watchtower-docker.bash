# watchtower, automatic update container to the latest image - https://containrrr.dev/watchtower/
docker run -d \
  --name watchtower \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e WATCHTOWER_NOTIFICATIONS=slack \
  -e WATCHTOWER_NOTIFICATION_SLACK_HOOK_URL="<discord-webhooks>/slack" \ #replace <discord-webhooks> with the correct webhook
  containrrr/watchtower -i 1800