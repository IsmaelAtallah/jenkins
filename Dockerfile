#FROM httpd
#COPY index.html /usr/local/apache2/htdocs/
#COPY dragon.jpg /usr/local/apache2/htdocs/
#CMD ["httpd-foreground"]
FROM nginx:latest
COPY . /usr/share/nginx/html

