FROM node:8.12

# set correct timezone
RUN ln -fs /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# set node defaults for production
ARG NODE_ENV=dev
ENV NODE_ENV $NODE_ENV

# run NPM and set paths
ENV PATH /usr/src/app/node_modules/.bin:$PATH

EXPOSE 3000

CMD yarn && yarn start
