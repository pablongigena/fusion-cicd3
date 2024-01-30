# Usa una imagen base con Apache y PHP
FROM php:apache

# Establece el directorio de trabajo en /var/www/html
WORKDIR /var/www/html

# Copia los archivos locales al contenedor
COPY index.html /var/www/html/
COPY style.css /var/www/html/

# Expone el puerto 80 para que pueda ser accedido desde fuera del contenedor
EXPOSE 80

# Comando a ejecutar cuando se inicie el contenedor
CMD ["apache2-foreground"]
