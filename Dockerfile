# TODO: change :latest
FROM prom/prometheus:latest

COPY prometheus.yml /etc/prometheus/prometheus.yml

ENV PORT=9090
EXPOSE 9090

CMD ["--web.listen-address", "--config.file=/etc/prometheus/prometheus.yml", "--web.enable-remote-write-receiver"]