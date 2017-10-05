#!/bin/sh -c

sed -e "s|\${NGINX_PATH_APP_1}|${NGINX_PATH_APP_1}|g" \
    -e "s|\${FLASK_APP_1_URL}|${FLASK_APP_1_URL}|g" \
    -e "s|\${NGINX_PATH_APP_2}|${NGINX_PATH_APP_2}|g" \
    -e "s|\${FLASK_APP_2_URL}|${FLASK_APP_2_URL}|g" \
    /etc/nginx/conf.d/nginx.conf.tpl > /etc/nginx/conf.d/nginx.conf || exit 1


if [ "$DEBUG" = "true" ]; then
  echo "NGINX_PATH_APP_1    : ${NGINX_PATH_APP_1}"
  echo "FLASK_APP_1_URL     : ${FLASK_APP_1_URL}"
  echo "NGINX_PATH_APP_2    : ${NGINX_PATH_APP_2}"
  echo "FLASK_APP_2_URL     : ${FLASK_APP_2_URL}"
  echo

  echo "--------------- 8< /etc/nginx/conf.d/nginx.conf >8 ---------------"
  cat /etc/nginx/conf.d/nginx.conf
  echo "--------------- 8< /etc/nginx/conf.d/nginx.conf >8 ---------------"
fi

/usr/sbin/nginx -g "daemon off;"
