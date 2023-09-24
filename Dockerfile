#dockerfile desribes the steps involved in the process to create image
#at first we need to specify the  base images required for our image
FROM node:latest

#now we need to tansfer files from source to the filesystem of comtainer
COPY package.json /app/
COPY src /app/

#as files are transferred change to the directory where app files are stored
WORKDIR /app

#now we are in main directory and we need to install the required packges for the app
RUN npm install

#now we need to run the appliction for this we use CMD command which deontes the default executable when the container starts
CMD ["node","server.js"]