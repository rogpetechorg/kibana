FROM docker.elastic.co/kibana/kibana:8.15.3
USER root
COPY config/kibana.yml /usr/share/kibana/config/kibana.yml
EXPOSE 5601

CMD ["bin/kibana"]