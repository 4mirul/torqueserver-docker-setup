# https://github.com/google/cadvisor
VERSION=v0.37.5
docker run -d \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Kuala_Lumpur \
  --volume=/:/rootfs:ro \
  --volume=/var/run:/var/run:ro \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --volume=/dev/disk/:/dev/disk:ro \
  --publish=8086:8080 \
  --detach=true \
  --name=cadvisor \
  --privileged \
  --device=/dev/kmsg \
  --restart unless-stopped \
  --net=main \
  gcr.io/cadvisor/cadvisor:$VERSION