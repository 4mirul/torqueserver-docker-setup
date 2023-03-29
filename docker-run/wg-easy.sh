docker run -d \
  --name=wg-easy \
  -e WG_HOST=${WG_HOST} \
  -e PASSWORD=${PASS} \
  -e WG_DEFAULT_ADDRESS="10.66.66.x" \
  -e WG_DEFAULT_DNS="10.66.66.1" \ 
  #DNS not working correctly
  -v /opt/.wg-easy:/etc/wireguard \
  -p 51820:51820/udp \
  -p 51821:51821/tcp \
  -l flame.type=app \
  -l flame.name=wg-easy  \
  -l flame.url=http://torqueserver.home:51821/   \
  -l flame.icon=vpn  \
  -l com.centurylinklabs.watchtower.enable=true  \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
  --sysctl="net.ipv4.ip_forward=1" \
  --restart unless-stopped \
  weejewel/wg-easy