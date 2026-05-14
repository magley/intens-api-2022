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

### Using Kubernetes

```sh
helm [install|upgrade] ./charts/api api
```

Kubernetes deployment has been tested using
a local Minikube cluster. The service can be
exposed outside the cluster using `kubectl` or
`minikube`:

```sh
kubectl port-forward svc/intens-api-2022 8080:8080
# OR:
minikube service intens-api-2022
```