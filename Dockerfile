#Start this applocation from Node.JS 10 (LTS) image
FROM node:10

#Specify the directory inside the image in which all commands will run
WORKDIR /usr/src/app

#Copy packages files and install dependencies
COPY package.json ./
RUN npm install

#copy all of the app fiule sinto the image
COPY . .

#The default command to run when starting the container 
CMD ["npm", "start"]