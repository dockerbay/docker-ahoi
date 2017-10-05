server {
    listen 80;

    server_name test-service-1;

    client_max_body_size   50M;

    location ${NGINX_PATH_APP_1} {
        proxy_pass              ${FLASK_APP_1_URL};
    }

    location ${NGINX_PATH_APP_2} {
        proxy_pass              ${FLASK_APP_2_URL};
    }
}
