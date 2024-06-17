FROM alpine:3.18 as build

ENV VERNEMQ_VERSION="1.13.0"

# commit Release 1.13.0
ENV VERNEMQ_DOCKER_VERSION="1055f9d3a465242a9969cd8401050aa52ac68121"

RUN \
  apk add \
    git \
    alpine-sdk \
    erlang-dev \
    snappy-dev \
    bsd-compat-headers \
    openssl-dev \
    tzdata

RUN git clone --depth 1 --branch ${VERNEMQ_VERSION} \
      https://github.com/vernemq/vernemq.git \
      /usr/src/vernemq

RUN cd /usr/src/vernemq && \
    make rel && \
    mv _build/default/rel/vernemq /vernemq

RUN wget -O /vernemq/etc/vm.args https://github.com/vernemq/docker-vernemq/raw/${VERNEMQ_DOCKER_VERSION}/files/vm.args 

RUN wget -O /vernemq/bin/vernemq.sh https://github.com/vernemq/docker-vernemq/raw/${VERNEMQ_DOCKER_VERSION}/bin/vernemq.sh 

RUN wget -O /vernemq/bin/rand_cluster_node.escript https://github.com/vernemq/docker-vernemq/raw/${VERNEMQ_DOCKER_VERSION}/bin/rand_cluster_node.escript

RUN chown -R 10000:10000 /vernemq

RUN chmod 0755 /vernemq/bin/vernemq.sh

FROM alpine:3.18

RUN apk --no-cache --update --available upgrade && \
    apk add --no-cache ncurses-libs openssl libstdc++ jq curl bash snappy-dev nano vim tzdata

RUN addgroup --gid 10000 vernemq 

RUN adduser --uid 10000 -H -D -G vernemq -h /vernemq vernemq 

RUN install -d -o vernemq -g vernemq /vernemq

ENV DOCKER_VERNEMQ_LOG__CONSOLE=console \
    PATH="/vernemq/bin:$PATH" \
    VERNEMQ_VERSION="1.13.0"

WORKDIR /vernemq

COPY --chown=10000:10000 --from=build /vernemq /vernemq

RUN ln -s /vernemq/etc /etc/vernemq 

RUN ln -s /vernemq/data /var/lib/vernemq 

RUN ln -s /vernemq/log /var/log/vernemq

# Ports
# 1883  MQTT
# 8883  MQTT/SSL
# 8080  MQTT WebSockets
# 44053 VerneMQ Message Distribution
# 4369  EPMD - Erlang Port Mapper Daemon
# 8888  Health, API, Prometheus Metrics
# 9100 9101 9102 9103 9104 9105 9106 9107 9108 9109  Specific Distributed Erlang Port Range

EXPOSE 1883 8883 8080 44053 4369 8888 \
       9100 9101 9102 9103 9104 9105 9106 9107 9108 9109

VOLUME ["/vernemq/log", "/vernemq/data", "/vernemq/etc"]

HEALTHCHECK CMD vernemq ping | grep -q pong

USER vernemq

# CMD ["/vernemq/bin/vernemq.sh"]

