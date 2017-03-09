FROM solr:5.5.3-alpine

ADD conf/drupal-4.4-solr-5.x /solr-conf

EXPOSE 8983

ENTRYPOINT docker-entrypoint.sh solr-precreate drupal /solr-conf
