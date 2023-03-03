FROM node:14 

WORKDIR /app

ARG DEFAULT_PORT=80

RUN mkdir temp feedback

COPY package.json .

RUN npm install

COPY . .

ENV PORT DEFAULT_PORT

EXPOSE $DEFAULT_PORT

CMD ["npm","start"]
