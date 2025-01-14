FROM mhart/alpine-node:12

RUN apk --update add --no-cache openssh-client git make gcc g++ python rsync bash
RUN npm i -g node-gyp
RUN mkdir -p /srv
WORKDIR /srv
COPY . /srv
RUN npm i
CMD [ "npm", "run", "start" ]
