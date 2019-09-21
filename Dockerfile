FROM nginx
COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/ssl/my_wpress_site.cert /etc/nginx/my_wpress_site.cert
COPY ./nginx/ssl/my_wpress_site.key /etc/nginx/my_wpress_site.key