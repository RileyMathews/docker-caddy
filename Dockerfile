FROM rileymathews/base
RUN yum install yum-plugin-copr -y
RUN yum copr enable @caddy/caddy -y
RUN yum install caddy -y
COPY ./Caddyfile /etc/caddy/Caddyfile

COPY ./entrypoint.zsh /entrypoint-scripts/entrypoint.zsh
RUN chmod +x /entrypoint-scripts/entrypoint.zsh

ENTRYPOINT [ "/entrypoint-scripts/entrypoint.zsh" ]
CMD [ "/bin/zsh" ]
