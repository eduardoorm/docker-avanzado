#! /bin/bash

#Borra todas las imagenes sin etiqueta 
docker image prune -a

# Luego, elimina contenedores detenidos
docker container prune

# Seguidamente, elimina volúmenes sin uso
docker volume prune

# Opcionalmente, elimina sistemas no utilizados, hace lo mismo que los tres anteriores
docker system prune

# Finalmente, limpia caché de imágenes
docker builder prune