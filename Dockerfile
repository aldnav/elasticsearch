FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.2
RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch/config/
RUN chmod g+ws /usr/share/elasticsearch
RUN yes | bin/elasticsearch-plugin install repository-s3
