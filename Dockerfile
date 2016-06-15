FROM node:4.2

RUN git clone https://github.com/bigSnell/node-hello.git /app
WORKDIR /app

# Install app dependencies
RUN npm -q install
COPY . /app

EXPOSE 3000
CMD [ "node", "app.js" ]
#Version 1
