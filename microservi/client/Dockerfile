FROM node:14 AS build_client
WORKDIR /usr/src/app
COPY ./ ./client
RUN cd /client && nmp install && npm run build --prod

FROM nginx:latest
COPY --from=build_client /usr/src/app/client/dist/client /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 4200


