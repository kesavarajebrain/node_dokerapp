#Dockerfile

# From baseimage - node is the base image here and alpine is the os which node will run other the numbers are tags or version 
# FROM baseImage:

FROM node:21-alpine3.18

#WORKDIR /the/workdir/path (here we give the directory)

WORKDIR /app

#COPY source dest - source is the package.json file destination is the app (because app is the default running env of docker)

COPY package.json /app

#RUN command

RUN npm install

COPY . /app

#CMD [ "executable" ] (give run cmds , multiple words means give sepration inside array)

 CMD [ "node","index" ]