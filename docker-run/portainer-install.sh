docker volume create portainer_data

docker run -d -p 8000:8000 -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -l flame.type=app -l flame.name=portainer -l flame.url=http://torqueserver.home:9000/ -l flame.icon=image-multiple -l com.centurylinklabs.watchtower.enable=true portainer/portainer-ce:latest