FROM nginx:latest
RUN sed -i 's/nginx/Webhooks  Jenkins/g' /usr/share/nginx/html/index.html
EXPOSE 80

