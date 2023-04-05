# Videoclub

Proyecto de ejemplo sobre cómo conectar y usar MySQL desde Java.

## Preparar la base de datos MySQL

1. Arrancar un servidor [MySQL 8](https://github.com/ijaureguialzo/mysql8) con Docker.

2. Crear un usuario `videoclub` con una base de datos `videoclub` asociada.

3. Importar las tablas desde el archivo [videoclub.sql](bd/videoclub.sql).
    
    :warning: Si se usa la opción `Importar` de PhpMyAdmin, desmarcar la opción `No utilizar AUTO_INCREMENT con el valor 0` o dará error al insertar los datos.
