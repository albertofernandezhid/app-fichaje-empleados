# Usa una imagen oficial de Node.js
FROM node:18

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de dependencias primero para aprovechar la cache de Docker
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código al contenedor
COPY . .

# Expone el puerto que usa tu backend (ajusta si es otro)
EXPOSE 3000

# Variables de entorno por defecto (opcional, si no usas .env)
ENV NODE_ENV=production

# Comando por defecto al iniciar el contenedor
CMD ["npm", "start"]
