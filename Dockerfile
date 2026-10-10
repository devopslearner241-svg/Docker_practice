FROM nginx

MAINTAINER varsha

LABEL description="movie tickets booking platform"

RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/

RUN chown -R nginx:nginx /usr/share/nginx/html \
    && chown -R nginx:nginx /var/cache/nginx \
    && chown -R nginx:nginx /var/log/nginx \
    && touch /var/run/nginx.pid \
    && chown nginx:nginx /var/run/nginx.pid

USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
