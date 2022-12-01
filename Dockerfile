# specify base for docker image 14alpine because it has the required tools unlike alpine.
FROM node:14-alpine
# install the dependices or required files to run it
WORKDIR /usr/app
COPY ./ ./
RUN npm install
# defult command to start the software
CMD ["npm", "start"]
