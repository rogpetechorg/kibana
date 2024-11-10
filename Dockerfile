FROM docker.elastic.co/kibana/kibana:8.15.3
USER root

RUN apt-get update && apt-get install -y vim && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /usr/share/kibana/config
COPY kibana/config/ /usr/share/kibana/config/
USER kibana
EXPOSE 5601

CMD ["bin/kibana"]