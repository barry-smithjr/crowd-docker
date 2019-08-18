# crowd-docker

Atlassian Crowd implementation inside a Docker container

## Installation

Pull the image from [Docker Hub](https://hub.docker.com/)

```bash
docker pull barryb1991/crowd-docker:latest
```

## Usage

Make sure to substitute your actual domain below. If you plan on running crowd in a subdirectory such as /crowd, change the `CATALINA_CONTEXT_PATH` variable.

### docker run example

```bash
docker run -d -p 8095:8095 \
-v '/crowd-data:/var/atlassian/application-data/crowd' \
-e CATALINA_CONNECTOR_SECURE='true' \
-e CATALINA_CONNECTOR_SCHEME='https' \
-e CATALINA_CONNECTOR_PROXYPORT='443' \
-e CATALINA_CONNECTOR_PROXYNAME='crowd.yourdomain.com' \
-e CATALINA_CONTEXT_PATH='' \
-e JVM_MINIMUM_MEMORY='512m' \
-e JVM_MAXIMUM_MEMORY='512m' \
--name atlassian-crowd \
barryb1991/crowd-docker:latest 
```

### Compose
[docker-compose.yml](https://github.com/barry-smithjr/crowd-docker)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[GPL-3.0](https://choosealicense.com/licenses/gpl-3.0/)
