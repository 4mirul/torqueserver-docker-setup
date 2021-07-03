docker run --name exportarr_sonarr \
  -e PORT=9707 \
  -e URL="http://192.168.0.105:8989" \
  -e APIKEY="<api-key>" \
  --restart unless-stopped \
  -p 9707:9707 \
  -d ghcr.io/onedr0p/exportarr:latest exportarr sonarr

docker run --name exportarr_radarr \
  -e PORT=9708 \
  -e URL="http://192.168.0.105:7878" \
  -e APIKEY="<api-key>" \
  --restart unless-stopped \
  -p 9708:9708 \
  -d ghcr.io/onedr0p/exportarr:latest exportarr radarr

docker run --name exportarr_lidarr \
  -e PORT=9709 \
  -e URL="http://192.168.0.105:8686" \
  -e APIKEY="<api-key>" \
  --restart unless-stopped \
  -p 9709:9709 \
  -d ghcr.io/onedr0p/exportarr:latest exportarr lidarr