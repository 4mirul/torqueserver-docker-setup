# cyan-docker-setup

- docker
- docker-compose
- .env required for some
- make sure include PUID and PGID
- make sure set container name, timezone and network(if needed)

## quick copy

`--name placeholder`

`-e TIME_ZONE="Asia/Kuala_Lumpur"`

```.sh
volumes:
- "/etc/timezone:/etc/timezone:ro"
- "/etc/localtime:/etc/localtime:ro"
```

## references

[linuxserver docker-compose](https://docs.linuxserver.io/general/docker-compose)

[docker-compose cheatsheet](https://devhints.io/docker-compose)

[docker cheatsheet](https://github.com/collabnix/dockerlabs/blob/master/docker/cheatsheet/README.md)

[docker compose reference](https://docs.docker.com/compose/reference/)

[docker networking](https://docs.docker.com/compose/networking/)

[understanding PUID and PGID](https://docs.linuxserver.io/general/understanding-puid-and-pgid)
