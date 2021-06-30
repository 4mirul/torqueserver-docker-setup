# https://prometheus.io/docs/prometheus/latest/installation/
docker run \
    -p 9090:9090 \
    -v /opt/prometheus:/etc/prometheus \
    prom/prometheus