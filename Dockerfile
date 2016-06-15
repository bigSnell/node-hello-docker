FROM node:4.2

RUN git clone https://github.com/bigSnell/node-hello.git /app
WORKDIR /app
#stuff
# Copy package.json separately so it's recreated when package.json
# changes.
#COPY package.json ./package.json
RUN npm -q install
COPY . /app
RUN npm -q install -g

EXPOSE 3000

CMD [ "node", "app.js" ]
