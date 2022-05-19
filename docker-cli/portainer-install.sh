docker volume create portainer_data

docker run -d -p 8000:8000 -p 9443:9443 -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -l flame.type=app -l flame.name=portainer -l flame.url=http://192.168.0.105:9000/ -l flame.icon=image-multiple portainer/portainer-ce:latest