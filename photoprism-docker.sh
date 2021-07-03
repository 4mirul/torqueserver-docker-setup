# https://photoprism.app/
docker run -d \
  --name photoprism \
  --security-opt seccomp=unconfined \
  --security-opt apparmor=unconfined \
  -p 2342:2342 \
  -e PHOTOPRISM_UPLOAD_NSFW="true" \
  -e PHOTOPRISM_ADMIN_PASSWORD="password" \
  -v /opt/photoprism/storage:/photoprism/storage \
  -v /mnt/disk0/pictures/photoprism:/photoprism/originals \
  --restart unless-stopped \
  photoprism/photoprism