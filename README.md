# Intens DevOps Task

## Getting Started

The server runs on port `8080` by default (see [application.properties](./src/main/resources/application.properties)).
Set the `PORT` environment variable to use a different port.

### Using Docker

```sh
docker build -t {tagname} .
docker run -p 8080:8080 -e PORT=8080 {tagname}
```

### Using Docker Compose

```sh
EXTERNAL_PORT=8080 PORT=8080 docker compose up --build
```

You can specify the external port using the `EXTERNAL_PORT`
environment variable (default `8080`).