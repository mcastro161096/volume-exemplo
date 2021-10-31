FROM node:latest
MAINTAINER Matheus Castro
COPY . /var/www
WORKDIR /var/www
RUN npm install 
ENTRYPOINT ["npm", "start"]
EXPOSE 3000



# docker build -f Dockerfile -t mcastrodotnet/node .