FROM nginx
MAINTAINER varsha
LABEL this is movie tickets booking platform
EXPOSE 80
COPY index.html /usr/share/nginx/html/
