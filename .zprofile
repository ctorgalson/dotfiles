# Run platform self:install if it's not already, but don't let it update the
# .zshrc file.
if command -v platform &>/dev/null && [[ ! -d ~/.platformsh ]]
then
  platform self:install --shell-type=zsh --no
fi
