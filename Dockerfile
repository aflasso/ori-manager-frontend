# Usa una imagen ligera de Nginx para servir una página estática
FROM nginx:alpine

# Escribe un archivo index.html de prueba dentro del contenedor
RUN echo "<h1>Docker Build Successful!</h1>" > /usr/share/nginx/html/index.html

# Expón el puerto 80
EXPOSE 80
