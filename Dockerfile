FROM nginx:alpine

COPY website-sample /usr/share/nginx/html

EXPOSE 80
