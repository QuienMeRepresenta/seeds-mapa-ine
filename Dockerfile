FROM node:14

WORKDIR /app

COPY *.json /app/
COPY *.lock /app/

RUN yarn install --frozen-lockfile
COPY . /app/

CMD ["yarn", "start"]
