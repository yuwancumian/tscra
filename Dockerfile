FROM node:8

ADD package.json /package.json

ENV NODE_PATH=/node_modules
ENV PATH=$PATH:/node_modules/.bin
RUN npm install --silent

WORKDIR /app
ADD . /app

EXPOSE 3000
EXPOSE 35729

CMD ["npm", "start"]

