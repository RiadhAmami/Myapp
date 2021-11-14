From nginx:alpine
COPY ./dist/Myapp /usr/share/nginx/html
Expose 4201
CMD ["nginx" ,-g,"deamon off;"]
