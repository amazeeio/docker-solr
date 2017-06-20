
#!/bin/bash
#
# docker-entrypoint for docker-solr

set -e

if [[ "$VERBOSE" = "yes" ]]; then
    set -x
fi

exec "$@"
