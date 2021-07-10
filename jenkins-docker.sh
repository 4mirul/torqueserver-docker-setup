docker run -d \
	--name myjenkins \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Kuala_Lumpur \
	-p 8087:8080 \
	-p 50000:50000 \
	-v /opt/jenkins:/var/jenkins_home \
  jenkinsci/jenkins