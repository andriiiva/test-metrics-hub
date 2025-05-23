FROM prom/prometheus:latest

RUN echo $PORT
RUN echo "BUILDIO PORT: " $PORT

COPY prometheus.yml /etc/prometheus/prometheus.yml

CMD sh -c "--web.listen-address=:$PORT --config.file=/etc/prometheus/prometheus.yml --web.enable-remote-write-receiver"