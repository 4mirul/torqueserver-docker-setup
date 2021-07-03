docker run --rm -d -p 9115:9115 --name blackbox_exporter -v /opt/blackbox_exporter/config:/etc/blackbox_exportera prom/blackbox-exporter:master --config.file=/config/blackbox.yml
