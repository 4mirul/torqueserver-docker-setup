def generate_template_compose(name, port_out, port_in):
    content = '''\
# https://example.com/
---
version: "3"
services:
  {name}:
    image: alpine:latest
    container_name: {name}
    hostname: {name}
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Asia/Kuala_Lumpur
    volumes:
      - /path/to/config:/config
      - ${{DISK0}}:/disk0
      - ${{DISK0}}:/disk1
      - volume-name1:/data
      - /var/run/docker.sock:/var/run/docker.sock
    ports:
      - {port_out}:{port_in}
    restart: unless-stopped
    labels:
      - com.centurylinklabs.watchtower.enable=true # watchtower auto-update
      - flame.type=app # flame label https://github.com/pawelmalak/flame
      - flame.name={name}
      - flame.url=http://${{HOSTNAME}}:{port_out}/ # local http://${{HOSTNAME}}:{port_out}/ or subdomain https://{name}.${{DOMAIN}}/ or subfolder https://${{DOMAIN}}/{name}
      - flame.icon=icon_name # https://materialdesignicons.com/
      - homepage.group=group_name # homepage label https://github.com/benphelps/homepage
      - homepage.name={name}
      - homepage.icon=icon_name.png # https://gethomepage.dev/en/configs/services/#icons
      - homepage.href=http://${{HOSTNAME}}:{port_out}/ # local http://${{HOSTNAME}}:{port_out}/ or subdomain https://{name}.${{DOMAIN}}/ or subfolder https://${{DOMAIN}}/{name}
      - homepage.description=
      # - homepage.widget.type=homepage
      # - homepage.widget.url=http://${{HOST}}:{port_out}/
      # - homepage.widget.key=yourembyapikeyhere
      # - homepage.widget.fields=["field1","field2"] # optional
    # dns: ${{PIHOLE_IP}} # pihole dns
volumes:
  volume-name1:
    external: true
networks:
  default:
    external: true
    name: main-network
'''.format(name=name, port_out=port_out, port_in=port_in)

    filename = '{}-compose.yml'.format(name)

    with open(filename, 'w') as file:
        file.write(content)

name = input("Enter the name for your service: ")
port_out = input("Enter the port_out for your service: ")
port_in = input("Enter the port_in for your service: ")
generate_template_compose(name, port_out, port_in)
