# Imagen base
FROM node:16

# Directorio de trabajo
WORKDIR /usr/src/app

# Copiar dependencias
COPY package*.json ./
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando para ejecutar
CMD ["npm", "start"]
