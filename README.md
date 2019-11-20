Crear la imagen:
docker build -t express_app .

Crea el contenedor::
docker run -it -d -p 80:3000 express_app

Para borrar todos los contenedores usa el comando:
docker rm -vf $(docker ps -a -q)

Para borrar todas las imagenes usa el comando:
docker rmi -f $(docker images -a -q)
