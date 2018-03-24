FROM node:9.9.0-alpine
EXPOSE 8080
COPY server.js .
CMD node server.js
