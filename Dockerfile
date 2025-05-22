# TODO: change :latest
FROM prom/prometheus:latest

COPY prometheus.yml /etc/prometheus/prometheus.yml

ENV PORT=9090
EXPOSE 9090

CMD sh -c "/bin/prometheus --web.listen-address=:$PORT --config.file=/etc/prometheus/prometheus.yml --web.enable-remote-write-receiver"