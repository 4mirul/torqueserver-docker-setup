docker run -d -p 8086:8086 \
      -v /opt/influxdb/data:/var/lib/influxdb2 \
      -v /opt/influxdb/config:/etc/influxdb2 \
      -e DOCKER_INFLUXDB_INIT_MODE=setup \
      -e DOCKER_INFLUXDB_INIT_USERNAME=user \
      -e DOCKER_INFLUXDB_INIT_PASSWORD=password \
      -e DOCKER_INFLUXDB_INIT_ORG=org \
      -e DOCKER_INFLUXDB_INIT_BUCKET=bucket \
      influxdb:2.0