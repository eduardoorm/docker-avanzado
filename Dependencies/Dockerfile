# Etapa de construcción
FROM node:18-alpine AS build
WORKDIR /app

# Copiar archivos de dependencias primero para aprovechar la caché de Docker
COPY package.json package-lock.json ./
RUN npm ci --only=production

# Etapa de producción
FROM node:18-alpine AS production
WORKDIR /app

# Copiar solo las dependencias de producción
COPY --from=build /app/node_modules ./node_modules

# Copiar el resto del código fuente
COPY . .

# Establecer variables de entorno
ENV NODE_ENV=production

# Exponer el puerto (opcional, pero recomendado)
EXPOSE 3000

# Definir el usuario Node para evitar permisos root (buena práctica)
USER node

# Definir el comando por defecto
CMD ["node", "index.js"]
