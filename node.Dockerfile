# Imagem de Origem
FROM node:18.12.1

# Diretório de trabalho(é onde a aplicação ficará dentro do container).
WORKDIR /app

# Install Angular NG
RUN npm install -g @angular/cli

#Desabilitado pois ao rodar yarn webpack serve, obtia erro
USER 1000

#caso precise de uma porta 
EXPOSE 3000

# docker build -f node.Dockerfile -t build-amb ./ && docker run --rm -it --entrypoint bash -v ${PWD}:/app build-amb 
# docker rmi build-amb

#caso precise de uma porta 
# docker build -f node.Dockerfile -t build-amb ./ && docker run --rm -it -p 3000:3000 --entrypoint bash -v ${PWD}:/app build-amb 

