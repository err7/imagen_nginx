FROM ubuntu
MAINTAINER Apasoft Formacion "apasoft.formacion@gmail.com"
##Actualizamos el sistema
RUN apt-get update
##Instalamos nginx
RUN apt-get install -y nginx
##Creamos un fichero index.html en el directorio por defecto de nginx
#RUN echo 'Mi primer Dockerfile' > /var/www/html/index.html

#VOLUME#
VOLUME  /var/www/html
#ADD web  /var/www/html
ARG webpage
ADD $webpage /var/www/html
##Arrancamos NGINX a través de ENTRYPOINT para que no pueda ser 
##modificar en la creación del contenedor
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
##Exponemos el Puerto 80
EXPOSE 80


##ENTRYPOINT##
#ENTRYPOINT ["/bin/bash"]
