# use a node base image
# i can add another line of comment just to test webhook
#here goes another line
FROM nginx
COPY . .
COPY . /usr/share/nginx/html

