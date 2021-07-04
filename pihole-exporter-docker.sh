docker run \
  --name pihole-exporter \
  -e 'PIHOLE_HOSTNAME=192.168.0.105' \
  -e 'PIHOLE_PORT=8088' \
  -e 'PIHOLE_PASSWORD=password' \
  -e 'INTERVAL=30s' \
  -e 'PORT=9617' \
  -p 9617:9617 \
  --restart unless-stopped
  ekofr/pihole-exporter:latest