# volume-exemplo
Projeto de exemplo para estudar docker

<strong>docker ps</strong>  lista todos os containers ativos  
<strong>docker ps -a </strong> lista todos os containers que ja foram criados, ativos ou não  
<strong>docker start id ou name do container</strong>  inicia um container que estava parado  
<strong>docker stop id ou name do container</strong>  para um container que estava ativo  
<strong>docker stop -t 0 id ou name do container</strong>  para um container que estava ativo passando o parametro -t que especifica que não deve esperar os 10 segundos que o docker espera por default ao dar stop em um container  
<strong>docker run -d ubuntu</strong>  baixa e inicia um container com a imagem do ubuntu sem atrelar o terminal ao terminal do ubuntu  
<strong>docker run -it ubuntu </strong> baixa e inicia um container com a imagem do ubuntu e atrela o terminal ao terminal do ubuntu  
<strong>docker run -d --name meucontainer ubuntu</strong>  cria um container chamado meucontainer  
<strong>docker run -d -p 8080:3000 --name meucontainer node</strong>  cria um container e mapeia a porta 8080 do host local com a porta 3000 do container  
<strong>docker network create --driver bridge minharede</strong>  cria uma rede chamada minharede  
<strong>docker network ls</strong>  lista todas as redes  
<strong>docker network inspect id ou name da rede</strong>  mostra no console todos os detalhes da rede inspecionada  
<strong>docker run -d --network minharede --name ubuntunarede ubuntu</strong>  cria um continer chamado ubuntunarede e coloco ele na rede minharede  
<strong>docker image ls</strong>   lista todas as imagens  
<strong>docker image inspect nome da imagem</strong>  mostra no console os detalhes da imagem  
<strong>docker inspect nome do container</strong>  mostra no console os detalhes do container, inclusive o Mounts pra ver os volumes que estão sendo usados
<strong>docker rm name ou id do container</strong>  exclui um container  
<strong>docker rm -f name ou id container </strong> para e exclui um container  
<strong>docker rmi nome da imagem</strong>  exclui uma imagem  
<strong>docker build -f Dockerfile -t mcastrodotnet/node</strong>(nomedousuario/nomedaimagem)  cria uma imagem com base em um Dockerfile  
<strong>docker login</strong>  faz login no dockerhub  
<strong>docker push nomedousuario/nomedaimagem</strong>  envia a imagem para o docker hub  

Exemplo de Dockerfile:  
FROM node:latest  
MAINTAINER Matheus Castro  
COPY . /var/www  
WORKDIR /var/www  
RUN npm install   
ENTRYPOINT ["npm", "start"]  
EXPOSE 3000  
