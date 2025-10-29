FROM node:24-bookworm-slim
WORKDIR /app
COPY . .
RUN mv ./docker/entrypoint.sh . \
    && apt-get update \
    && apt-get install -y ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g wrangler
ENTRYPOINT [ "bash", "./entrypoint.sh" ]