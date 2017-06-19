FROM nginx:1.10

RUN rm /etc/nginx/conf.d/default.conf

ADD conf/nginx.conf /etc/nginx/conf.d/nginx.conf

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
