FROM nginx:alpine

COPY ./website-sample/index.html /usr/share/nginx/html/index.html

EXPOSE 80
