# TODO: change :latest
FROM prom/prometheus:latest

COPY prometheus.yml /etc/prometheus/prometheus.yml

CMD ["--config.file=/etc/prometheus/prometheus.yml", "--web.enable-remote-write-receiver"]