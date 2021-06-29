# https://prometheus.io/docs/prometheus/latest/installation/
docker run \
    -p 9090:9090 \
    -v /opt/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
    prom/prometheus