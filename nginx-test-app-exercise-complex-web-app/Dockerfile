FROM nginx:1.10

RUN rm /etc/nginx/conf.d/default.conf

COPY conf/nginx.conf.tpl /etc/nginx/conf.d/nginx.conf.tpl
COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
