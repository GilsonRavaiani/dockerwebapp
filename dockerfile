# Usando a imagem oficial do Node.js 22 LTS
FROM node:22

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar arquivos para o contêiner
COPY package.json package-lock.json ./
RUN npm install

# Copiar o restante do código
COPY . .

# Expor a porta usada pela aplicação
EXPOSE 8080

# Comando para iniciar o servidor
CMD ["node", "server.js"]