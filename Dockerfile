# use a node base image
FROM nginx
COPY . .
COPY . /usr/share/nginx/html

