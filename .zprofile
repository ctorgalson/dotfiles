# Platform.sh-related.
#
# Run platform self:install if it's not already, but don't let it update the
# .zshrc file.
if command -v platform &>/dev/null && [[ ! -d ~/.platformsh ]]
then
  platform self:install --shell-type=zsh --no
fi

# Docksal-related.
#
# Set Docksal-related config vars on every login.
if command -v fin
then
  fin config set DOCKSAL_DNS_DOMAIN="s2n.xyz" --global
  fin config set DOCKSAL_DNS_UPSTREAM="1.1.1.1" --global
  fin config set DOCKSAL_VHOST_PROXY_IP="0.0.0.0" --global
  fin config set DOCKSAL_VHOST_PROXY_PORT_HTTP="80" --global
  fin config set DOCKSAL_VHOST_PROXY_PORT_HTTPS="443" --global
fi
