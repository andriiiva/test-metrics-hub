FROM prom/prometheus:latest

RUN echo $PORT
RUN echo "BUILDIO PORT: " $PORT

COPY prometheus.yml /etc/prometheus/prometheus.yml

ENTRYPOINT [ "/bin/prometheus" ]
CMD [ "--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/prometheus" ]