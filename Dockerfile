FROM registry.access.redhat.com/ubi9/nodejs-16:1-59.1665074152 AS build

ADD . /usr/src/app
WORKDIR /usr/src/app
RUN npm install --location=global yarn && yarn install && yarn build

FROM registry.access.redhat.com/ubi9/nginx-120:1-61.1665075998

COPY --from=build /usr/src/app/dist /usr/share/nginx/html
