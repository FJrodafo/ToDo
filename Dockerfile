# syntax=docker/dockerfile:1

FROM node:24-alpine
LABEL org.opencontainers.image.authors="Francisco José Rodríguez Afonso" \
      org.opencontainers.image.documentation="https://fjrodafo.github.io/ToDo/" \
      org.opencontainers.image.source="https://github.com/FJrodafo/ToDo" \
      org.opencontainers.image.version="1.0.0" \
      org.opencontainers.image.vendor="FJrodafo" \
      org.opencontainers.image.licenses="CC0-1.0" \
      org.opencontainers.image.title="ToDo" \
      org.opencontainers.image.description="Fast and minimalist to-do app!"
WORKDIR /app
COPY . .
RUN yarn install --production
EXPOSE 3000
ENV NODE_ENV=production
CMD ["node", "src/index.js"]
