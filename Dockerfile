FROM nginx:alpine
COPY . /usr/share/nginx/html/
RUN rm -f /usr/share/nginx/html/Dockerfile && sed -i "s/listen       80;/listen 8080;/" /etc/nginx/conf.d/default.conf
EXPOSE 8080
