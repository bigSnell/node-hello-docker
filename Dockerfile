FROM node:argon

RUN git clone https://github.com/bigSnell/node-hello.git /app
WORKDIR /app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 3000
CMD [ "node", "app.js" ]
