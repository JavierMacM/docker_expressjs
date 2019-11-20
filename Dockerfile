FROM node

WORKDIR /app/

COPY express_app/package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node","express_app/bin/www"]

#borrar todos los contenedores
#docker rm -vf $(docker ps -a -q)

#borrar todas las imagenes
#docker rmi -f $(docker images -a -q)