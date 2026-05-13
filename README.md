# Intens DevOps Task

## Getting Started

The server runs on port `8080` by default (see [application.properties](./src/main/resources/application.properties)).
Set the `PORT` environment variable to use a different port.

### Using Docker

```sh
docker build -t {tagname} .
docker run -p 8080:8080 -e PORT=8080 {tagname}
```
