FROM node:argon

RUN git clone https://github.com/bigSnell/node-hello.git /app
WORKDIR /app

# Install app dependencies
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 3000
CMD [ "node", "app.js" ]
#Version 1
