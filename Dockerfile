FROM node:14 

WORKDIR /app

RUN mkdir temp feedback

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["npm","start"]
