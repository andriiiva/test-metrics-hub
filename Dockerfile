# TODO: change :latest
FROM prom/prometheus:latest

COPY prometheus.yml /etc/prometheus/prometheus.yml

ENV PORT=9090
EXPOSE 9090
