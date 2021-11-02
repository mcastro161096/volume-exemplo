# volume-exemplo
Projeto de exemplo para estudar docker

docker ps  
docker ps -a  
docker start id ou name do container  
docker stop id ou name do container  
docker stop -t 0 id ou name do container  
docker run -d ubuntu  
docker run -it ubuntu  
docker run -d --name meucontainer ubuntu  
docker run -d -p 8080:3000 --name meucontainer node  
docker network create --driver bridge minharede  
docker network ls  
docker network inspect id ou name da rede  
docker run -d --network minharede --name ubuntunarede ubuntu  
docker image ls   
docker image inspect nome da imagem  
docker inspect nome do container  
docker rm name ou id do container  
docker rm -f name ou id container  
docker rmi nome da imagem  
docker build -f Dockerfile -t mcastrodotnet/node  
docker login  
docker push  

Exemplo de Dockerfile:  
FROM node:latest  
MAINTAINER Matheus Castro  
COPY . /var/www  
WORKDIR /var/www  
RUN npm install   
ENTRYPOINT ["npm", "start"]  
EXPOSE 3000  
