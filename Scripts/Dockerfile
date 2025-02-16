# Seleccionar la imagen base de Ubuntu
FROM ubuntu:latest

# Copiar el script al contenedor
COPY script.sh /usr/local/bin/script.sh

# Hacer el script ejecutable
RUN chmod +x /usr/local/bin/script.sh

# Ejecutar el script
RUN /usr/local/bin/script.sh

# Ejecutar comandos adicionales
RUN echo "Inicio de script" && \
    echo "Ejecutando tarea 1" && \
    echo "Ejecutando tarea 2" && \
    echo "Script finalizado"