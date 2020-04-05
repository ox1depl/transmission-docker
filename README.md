# transmission-dokcer
<p align="left">
<a href="https://hub.docker.com/r/ox1de/transmission">
        <img src="https://img.shields.io/badge/Docker%20HUB-transmission-yellow?style=for-the-badge&logo=docker"
            alt="Docker Cloud Image Repo"></a>

<a href="https://hub.docker.com/r/ox1de/transmission/builds">
        <img src="https://img.shields.io/docker/cloud/automated/ox1de/transmission?style=for-the-badge&logo=docker"
            alt="Docker Cloud Automated build"></a>

<a href="https://hub.docker.com/r/ox1de/transmission/builds">
        <img src="https://img.shields.io/docker/cloud/build/ox1de/transmission?style=for-the-badge&logo=docker"
            alt="Docker Cloud Build Status"></a>
</br></br></p>



Transmission torrent client based on the https://github.com/linuxserver/docker-transmission with the added healthcheck. this image is original, unmodified, only docker healthcheck support has been added.
The base image is latest, so no update is required on this repository side. However, the image on the docker hub built on the basis of this repository is being rebuilt whenever it detects changes in the transmission base image.

## Usage

Here are some example snippets to help you get started creating a container.

### docker

```
docker create \
  --name=transmission \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e TRANSMISSION_WEB_HOME=/combustion-release/ `#optional` \
  -e USER=username `#optional` \
  -e PASS=password `#optional` \
  -p 9091:9091 \
  -p 51413:51413 \
  -p 51413:51413/udp \
  -v <path to data>:/config \
  -v <path to downloads>:/downloads \
  -v <path to watch folder>:/watch \
  --restart unless-stopped \
  linuxserver/transmission
```


### docker-compose

Compatible with docker-compose v2 schemas.

```
---
version: "2"
services:
  transmission:
    image: linuxserver/transmission
    container_name: transmission
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
      - TRANSMISSION_WEB_HOME=/combustion-release/ #optional
      - USER=username #optional
      - PASS=password #optional
    volumes:
      - <path to data>:/config
      - <path to downloads>:/downloads
      - <path to watch folder>:/watch
    ports:
      - 9091:9091
      - 51413:51413
      - 51413:51413/udp
    restart: unless-stopped
```

## MORE INFO
For more info plz visit source repozitory https://github.com/linuxserver/docker-transmission
