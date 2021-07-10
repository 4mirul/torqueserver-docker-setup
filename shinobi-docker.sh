# https://shinobi.video/
docker run -d \
	--link mariadb:db \
	-p 8085:8080 \
  -e ADMIN_USER=admin@shinobi.video \
  -e ADMIN_PASSWORD=admin \
	-e MYSQL_USER=shinobi\
	-e MYSQL_PASSWORD=password\
	-e MYSQL_HOST=192.168.0.105 \
	-e MYSQL_DATABASE=shinobi \
	-e MYSQL_ROOT_PASSWORD=password \
	-e MYSQL_ROOT_USER=root \
	-e CRON_KEY=b59b5c62-57d0-4cd1-b068-a55e5222786f \
	-e PLUGINKEY_MOTION=49ad732d-1a4f-4931-8ab8-d74ff56dac57 \
	-e PLUGINKEY_OPENCV=6aa3487d-c613-457e-bba2-1deca10b7f5d \
	-e PLUGINKEY_OPENALPR=SomeOpenALPRkeySoPeopleDontMessWithYourShinobi \
	-e MOTION_HOST=localhost \
	-e MOTION_PORT=8080 \
  -e TZ=Asia/Kuala_Lumpur \
	-v /mnt/disk0/docker/shinobi/config:/config \
	-v /mnt/disk0/docker/shinobi/datadir:/var/lib/mysql \
	-v /mnt/disk0/docker/shinobi/videos:/opt/shinobi/videos \
	-v /dev/shm/shinobiDockerTemp:/dev/shm/streams \
  --net mariadb \
migoller/shinobidocker:microservice-debian
