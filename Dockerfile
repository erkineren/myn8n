FROM docker.n8n.io/n8nio/n8n:1.86.1

USER root

# Install curl and docker CLI using Alpine package manager
RUN apk add --no-cache \
    curl \
    docker-cli

# # Switch back to node user
# USER node 