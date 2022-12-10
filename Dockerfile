<<<<<<< HEAD
# build phase for the production dockerfile
From node:16-alpine as builder

WORKDIR '/app'

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

# run phase of the production dockerfile
From nginx

COPY --from=builder /app/build /usr/share/nginx/html

=======
# specify base for docker image 14alpine because it has the required tools unlike alpine.
FROM node:14-alpine
# install the dependices or required files to run it
WORKDIR /usr/app
COPY ./ ./
RUN npm install
# defult command to start the software
CMD ["npm", "start"]
>>>>>>> 67c15b3af030a5369dc88f1d6eed227f0128508f
