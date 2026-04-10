FROM nginx:alpine
RUN echo "<h1>Hello from my Jenkins Build!</h1>" > /usr/share/nginx/html/index.html
EXPOSE 80

