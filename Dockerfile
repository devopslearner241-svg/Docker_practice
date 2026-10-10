FROM nginx
MAINTAINER varsha
LABEL this is movie tickets booking platform
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
USER nginx
RUN chown -R nginx:nginx /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
