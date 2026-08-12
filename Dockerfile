FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html
RUN echo "<h1>Hi, This application is for testing secrets</h1>" > /usr/share/nginx/html/index.html
COPY secretfetch.sh /usr/local/bin/secretfetch.sh
RUN chmod +x /usr/local/bin/secretfetch.sh
ENTRYPOINT ["/usr/local/bin/secretfetch.sh"]
