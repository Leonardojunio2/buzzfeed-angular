# Imagem de Origem
FROM node:18.12.1

# Diretório de trabalho(é onde a aplicação ficará dentro do container).
WORKDIR /app

# Install Angular NG (não necessário?)
#RUN npm install -g @angular/cli

# Adicionando `/app/node_modules/.bin` para o $PATH
ENV PATH /app/node_modules/.bin:$PATH

# A wildcard is used to ensure both package.json AND package-lock.json are copied
# Instalando dependências da aplicação (armazenando em cache?)
COPY package*.json ./

# To Fix Permissions for Packages
RUN npm config set unsafe-perm true

RUN mkdir -p /app/node_modules/.cache
RUN chown -R node:node /app/node_modules

RUN npm install

#To bundle your app’s source code inside the Docker image, use the COPY instruction:
COPY . ./

# Lento, feito o RUN triplo acima
#RUN chown -R node /app/node_modules

#Your app binds to port 3000 so you’ll use the EXPOSE instruction to have it mapped by the docker daemon:
EXPOSE 4200 49153

#RUN useradd usernode
#RUN useradd -ms /bin/bash newuser
#USER node

# Inicializa a aplicação
CMD ["npm", "start"]
