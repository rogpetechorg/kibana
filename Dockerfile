FROM docker.elastic.co/kibana/kibana:8.15.3
USER root

RUN rm -f /usr/share/kibana/config/kibana.yml

RUN apt-get update && apt-get install -y vim && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /usr/share/kibana/config

COPY kibana/ /usr/share/kibana/
USER kibana
EXPOSE 5601

CMD ["bin/kibana"]
