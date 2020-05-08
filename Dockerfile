FROM centos:latest
RUN yum install yum-plugin-copr -y
RUN yum copr enable @caddy/caddy -y
RUN yum install caddy -y
COPY ./Caddyfile /etc/caddy/Caddyfile

COPY ./entrypoint.sh /entrypoint-scripts/entrypoint.sh
RUN chmod +x /entrypoint-scripts/entrypoint.sh

ENTRYPOINT [ "/entrypoint-scripts/entrypoint.sh" ]
CMD [ "/bin/bash" ]
