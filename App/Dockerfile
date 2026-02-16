# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /App
COPY . .
RUN yarn install --production
EXPOSE 3000
ENV NODE_ENV=production
CMD ["node", "src/index.js"]
