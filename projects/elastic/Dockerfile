FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.4

RUN elasticsearch-plugin install --batch ingest-attachment

ENV discovery.type=single-node