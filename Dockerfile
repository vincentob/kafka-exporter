FROM        quay.io/prometheus/busybox:latest

ARG TARGETARCH
ARG BIN_DIR=.build/linux-${TARGETARCH}/

COPY ${BIN_DIR}/kafka_exporter /bin/kafka_exporter

EXPOSE     9308
USER nobody
ENTRYPOINT [ "/bin/kafka_exporter" ]
