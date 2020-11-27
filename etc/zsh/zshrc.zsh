export http_proxy="http://localhost:7890"
export https_proxy="http://localhost:7890"

source ~/.local/etc/zsh/alias.zsh
source ~/.local/etc/zsh/plugins.zsh
source ~/.local/etc/zsh/env.zsh
source ~/.local/etc/zsh/app.zsh

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh