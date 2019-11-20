FROM node:10

WORKDIR /app/

COPY express_app/package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node","express_app/bin/www"]