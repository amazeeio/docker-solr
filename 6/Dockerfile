FROM solr:6.3.0-alpine

ADD conf/drupal-5.2-solr-6.x /solr-conf

CMD ["solr-precreate", "drupal", "/solr-conf"]
