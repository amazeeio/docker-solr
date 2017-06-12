FROM openjdk:8-jre-alpine

#RUN apk --no-cache add curl

ENV SOLR_VERSION 3.6.2
ENV SOLR_TGZ apache-solr-$SOLR_VERSION.tgz
ENV SOLR_URL http://archive.apache.org/dist/lucene/solr/$SOLR_VERSION/$SOLR_TGZ
ENV INSTALL_PATH /opt/solr
ENV AMAZEEIO_AUTODISCOVERY_SOLR true

RUN wget -q $SOLR_URL -O /tmp/$SOLR_TGZ && \
    mkdir -p $INSTALL_PATH && \
    tar -C $INSTALL_PATH --extract --file /tmp/$SOLR_TGZ --strip-components=1 && \
    rm /tmp/$SOLR_TGZ

COPY drupal-4.3-solr-3.x/conf/ $INSTALL_PATH/example/solr/conf/

WORKDIR /opt/solr/example

CMD [ "java", "-jar", "start.jar" ]
