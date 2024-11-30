FROM nginx:1-alpine-slim

ENV NGINX_PORT=8080
ENV HEALTH_PATH=/health

COPY default.conf.template /etc/nginx/templates/default.conf.template
COPY *.html /etc/nginx/html/

COPY docker-entrypoint.sh /
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]
