# use a node base image
# i can add another line of comment just to test webhook
FROM nginx
COPY . .
COPY . /usr/share/nginx/html

