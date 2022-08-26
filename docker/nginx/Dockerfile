FROM nginx:1.23.1

RUN mkdir -p /etc/nginx/conf.d/

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]