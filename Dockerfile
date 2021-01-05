# NGINX Dockerfile
# $ docker run --name some-nginx -v /some/content:/usr/share/nginx/html:ro -d nginx
FROM nginx

WORKDIR /usr/share/nginx/html
#COPY nginx.conf /etc/nginx/nginx.conf
COPY html/ /usr/share/nginx/html/

#RUN apk add curl
#RUN chmod +x /pwd.sh
#RUN /bin/sh /pwd.sh
#RUN /pwd.sh
#ENTRYPOINT ["/bin/bash", "/pwd.sh"]
#ENTRYPOINT ["/etc/init.d/nginx", "start"]

# Define default command.
#CMD /etc/init.d/nginx start && tail -f /var/log/nginx/error.log
ENTRYPOINT service nginx restart && bash
CMD ["bash"]
