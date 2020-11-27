ETC=~/.myconfig/etc
BIN=~/.myconfig/bin

export http_proxy="http://localhost:7890"
export https_proxy="http://localhost:7890"

source $ETC/zsh/alias.zsh
source $ETC/zsh/plugins.zsh
source $ETC/zsh/env.zsh
source $ETC/zsh/app.zsh

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
