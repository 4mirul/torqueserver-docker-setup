# TORQUESERVER-DOCKER-SETUP

@4mirul personal server docker setup.

- docker cli
- docker compose
- docker swarm
- kubernetes

## Install docker

- [Install](https://docs.docker.com/engine/install/)

## Install Portainer

A web UI for docker.

- [Install](https://docs.portainer.io/start/install/server/docker)

### Installing Portainer

```sh
$ docker volume create portainer_data
$ docker run -d -p 8000:8000 -p 9443:9443 -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
# or with Flame dashboard label below, replace url if needed.
$ docker run -d -p 8000:8000 -p 9443:9443 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -l flame.type=app -l flame.name=portainer -l flame.url=http://192.168.0.105:9000/ -l flame.icon=image-multiple portainer/portainer-ce:latest
```

## References

[Docker documentation](https://docs.docker.com/)

[Portainer documentation](https://docs.portainer.io/)

[Kubernetes documentation](https://kubernetes.io/docs/home/)

[Docker Compose by linuxserver](https://docs.linuxserver.io/general/docker-compose)

[Docker Compose cheatsheet](https://devhints.io/docker-compose)

[Dockerfile cheatsheet](https://devhints.io/dockerfile)

[Docker cheatsheet](https://dockerlabs.collabnix.com/docker/cheatsheet/)

[Docker Compose reference](https://docs.docker.com/compose/reference/)

[Understanding PUID and PGID by linuxserver](https://docs.linuxserver.io/general/understanding-puid-and-pgid)
