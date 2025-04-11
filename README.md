# myn8n

A self-hosted workflow automation tool based on n8n with Docker support.

## Overview

This project sets up n8n, an extendable workflow automation tool, in a containerized environment using Docker. It includes Docker CLI access within the container, allowing n8n workflows to interact with the Docker daemon on the host system.

## Prerequisites

- Docker and Docker Compose installed
- .env file configured with necessary environment variables

## Configuration

Create a `.env` file in the project root with the following variables:

```
N8N_HOST=your-host-or-ip
N8N_PORT=5678
GENERIC_TIMEZONE=UTC
```

## Installation and Usage

1. Clone this repository:

   ```
   git clone https://github.com/erkineren/myn8n.git
   cd myn8n
   ```

2. Set up your environment variables in the `.env` file

3. Start the application:

   ```
   docker-compose up -d
   ```

4. Access n8n in your browser at `http://localhost:5678` (or the configured port)

## Project Structure

- `docker-compose.yml` - Defines the n8n service configuration
- `Dockerfile` - Extends the official n8n image with Docker CLI support

## Notes

- The container has access to the host's Docker socket, allowing it to create and manage Docker containers
- Data is persisted using a Docker volume `n8n_data`
