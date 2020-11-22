# zmodload zsh/zprof
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
  command-not-found
  fd
  fzf
  git
  osx
  vscode
  vi-mode
  pip
  themes
  timer
  docker
  docker-compose
  sudo
  zsh-completions
)
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#


# login set up
# /usr/local/sbin/privoxy /usr/local/etc/privoxy/config

#####################
# Content
#####################
# Environment variable
# Language config
# Tools



#####################
# Functions
#####################

# for install package in server easily
alias ejectusb="diskutil unmount /Volumes/CHEN"


# Example aliases
alias zshconfig="vim ~/.zshrc"
alias sozsh="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias -s py=vim
alias sc="docker exec -it centos7_work /bin/bash"


############################
# Language config
############################
# java environment
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.8.jdk/Contents/Home/"
export PATH=$JAVA_HOME/bin:$PATH

# go environment
export GOPATH="/Users/chen/go"
export PATH="/Users/chen/go/bin:${PATH}"

# KUBECONFIG
# export KUBECONFIG=$(echo ~/.kube/config)
############################


############################
# Tools
############################
# iterm2 intergration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# brew gnu tools
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# thefuck
eval $(thefuck --alias)

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Tmux
alias attach="tmux attach-session -t"
alias tls="tmux ls"
alias tmk="tmux kill-session -t"
alias tvi="tmuxp load ide"
export EDITOR='vim'
# source ~/.bin/tmuxinator.zsh

# Vim
alias vimconfig="vim ~/.vimrc"
###########################