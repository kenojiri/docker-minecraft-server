# run Minecraft Server (Java version) in a Docker container

## prerequisites
- Docker host
  - with `docker compose`

## how to build and run Docker container
- create server.properties file from sample
  ```
  cp server.properties-creative.sample server.properties
  vim server.properties
  ```

- build and run Docker container
  ```
  docker compose up -d --build
  docker compose logs -f
  ```
