FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.2
RUN yes | bin/elasticsearch-plugin install repository-s3