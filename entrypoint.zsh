#!/bin/zsh
caddy start --config /etc/caddy/Caddyfile --adapter caddyfile
echo "test"
exec $@
