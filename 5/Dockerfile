FROM solr:5.5.3-alpine

ADD drupal-4.4-solr-5.x /solr-conf

VOLUME /opt/solr/server/solr/mycores/

CMD ["solr-precreate", "drupal", "/solr-conf"]
