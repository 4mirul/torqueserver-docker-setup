# torqueserver-docker-setup

- pure docker
- docker-compose

## docker

[Install](https://docs.docker.com/engine/install/)

### raspberry

[install](https://docs.docker.com/engine/install/debian/) or for ubuntu [install](https://docs.docker.com/engine/install/ubuntu/)

## portainer

[Install](https://documentation.portainer.io/v2.0/deploy/ceinstalldocker/)

[Upgrade](https://documentation.portainer.io/v2.0/upgrade/upddocker/)

### Install

`docker volume create portainer_data`

`docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce`

`docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -l flame.type=app -l flame.name=portainer -l flame.url=http://192.168.0.105:9000/ -l flame.icon=image-multiple portainer/portainer-ce:latest` - with flame label

### Upgrade

`docker stop portainer`

`docker rm portainer`

`docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest`

`docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -l flame.type=app -l flame.name=portainer -l flame.url=http://192.168.0.105:9000/ -l flame.icon=image-multiple portainer/portainer-ce:latest` - with flame label

## references

[linuxserver docker-compose](https://docs.linuxserver.io/general/docker-compose)

[docker-compose cheatsheet](https://devhints.io/docker-compose)

[docker cheatsheet](https://github.com/collabnix/dockerlabs/blob/master/docker/cheatsheet/README.md)

[docker compose reference](https://docs.docker.com/compose/reference/)

[docker networking](https://docs.docker.com/compose/networking/)

[understanding PUID and PGID](https://docs.linuxserver.io/general/understanding-puid-and-pgid)
