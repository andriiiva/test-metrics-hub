FROM prom/prometheus:latest

COPY prometheus.yml /etc/prometheus/prometheus.yml

CMD ["--web.listen-address=:80", "--config.file=/etc/prometheus/prometheus.yml", "--web.enable-remote-write-receiver"]