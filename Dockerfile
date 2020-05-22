FROM node:10

WORKDIR /usr/src/app

# Cache npm installs
COPY package.json ./
RUN npm install && npm install -g serve

COPY . . 
RUN npm run build
EXPOSE 5000
CMD ["serve", "-s", "build"]
