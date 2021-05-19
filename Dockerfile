FROM node:14

WORKDIR /app

COPY *.json /app/
COPY *.lock /app/

RUN yarn install
COPY . /app/

CMD ["yarn", "start"]
