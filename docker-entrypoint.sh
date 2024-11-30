#!/usr/bin/env sh
set -eu

envsubst '${NGINX_PORT} ${HEALTH_PATH}' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
