FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.2
COPY elasticsearch.yml /usr/share/elasticsearch/config/
RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/config/
RUN chmod g+w /usr/share/elasticsearch
RUN yes | bin/elasticsearch-plugin install repository-s3