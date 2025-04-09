FROM nginx:mainline-alpine-slim
COPY Configuration/. /etc/nginx/conf.d/
COPY SSL/. /etc/nginx/ssl/
RUN chown -R nginx:nginx /etc/nginx/conf.d/
RUN chown -R nginx:nginx /etc/nginx/ssl/
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Jakarta /etc/localtime