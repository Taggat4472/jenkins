FROM nginx:latest
RUN echo "Salut les copains" > /usr/share/nginx/html/index.html
EXPOSE 80