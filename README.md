# Bark Docker Setup

This project uses Docker to run the [Bark](https://github.com/suno-ai/bark) model for text-to-speech synthesis. You can easily build and run the application using Docker Compose.

## Prerequisites

- Docker
- Docker Compose

## Setup

1. Clone or download the repository to your local environment.
2. Navigate to the project directory where the `docker-compose.yml` file is located.

## Build the Docker Image

To build the Docker image, run the following command:

```bash
docker compose build
```

## Environment Variable Configuration

The environment variables TEXT and OUTPUT_FILE can be customized directly in the docker-compose.yml file. 

For example:
```
environment:
  TEXT: "Hello, this is an example text."
  OUTPUT_FILE: "output_audio.wav"
```

* Note: Downloading Models

When starting the service for the first time, the Bark model will automatically download required resources. This process may take some time, depending on your internet connection. Please be patient and monitor the logs for progress.

```bash
docker compose down && docker compose rm -f && docker compose up -d && docker compose logs -f
```

Once the service has completed the text-to-speech process, you should see the following message in the logs:

```
bark_container  | Done! Output audio file is saved at: '/output/demo.wav'
```
