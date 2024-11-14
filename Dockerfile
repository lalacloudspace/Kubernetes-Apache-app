FROM ubuntu
LABEL description="I am building this image for Apache containers"
LABEL maintainer="Lala Aicha"
RUN apt -y update
RUN apt -y install apache2
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]




