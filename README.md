# torqueserver-docker-setup

- docker cli
- docker-compose
- docker swarm
- kubernetes

## docker install

- [Install](https://docs.docker.com/engine/install/)

### raspberry

- [install](https://docs.docker.com/engine/install/debian/)
- for ubuntu; [install](https://docs.docker.com/engine/install/ubuntu/)

## portainer

- [Install](https://documentation.portainer.io/v2.0/deploy/ceinstalldocker/)

### portainer install

```sh
$ docker volume create portainer_data
$ docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
# or with flame label below
$ docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -l flame.type=app -l flame.name=portainer -l flame.url=http://192.168.0.105:9000/ -l flame.icon=image-multiple portainer/portainer-ce:latest
```

### Upgrade

```sh
$ docker stop portainer
$ docker rm portainer
$ docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
# or with flame label below
$ docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -l flame.type=app -l flame.name=portainer -l flame.url=http://192.168.0.105:9000/ -l flame.icon=image-multiple portainer/portainer-ce:latest
```

## references

[Docker Documentation](https://docs.docker.com/)

[Portainer Documentation](https://docs.portainer.io/v/ce-2.11/)

[Kubernetes Documentation](https://kubernetes.io/docs/home/)

[linuxserver docker-compose](https://docs.linuxserver.io/general/docker-compose)

[docker-compose cheatsheet](https://devhints.io/docker-compose)

[Dockerfile cheatsheet](https://devhints.io/dockerfile)

[docker cheatsheet](https://github.com/collabnix/dockerlabs/blob/master/docker/cheatsheet/README.md)

[docker compose reference](https://docs.docker.com/compose/reference/)

[understanding PUID and PGID](https://docs.linuxserver.io/general/understanding-puid-and-pgid)
