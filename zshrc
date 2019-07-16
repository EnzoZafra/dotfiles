#  ▄███████▄     ▄████████    ▄█    █▄
# ██▀     ▄██   ███    ███   ███    ███
#       ▄███▀   ███    █▀    ███    ███
#  ▀█▀▄███▀▄▄   ███         ▄███▄▄▄▄███▄▄
#   ▄███▀   ▀ ▀███████████ ▀▀███▀▀▀▀███▀
# ▄███▀                ███   ███    ███
# ███▄     ▄█    ▄█    ███   ███    ███
#  ▀████████▀  ▄████████▀    ███    █▀

# ##################################################################################################
# Default settings
# ##################################################################################################

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"
VIM_THEME="dracula"

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
ENABLE_CORRECTION="true"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ##################################################################################################
# Aliases
# ##################################################################################################

# common commands
alias cl="clear"
alias vi="vim"
# alias ls="gls --color -lh --group-directories-first"
alias ls="exa -lh --group-directories-first"
# alias la="gls --color -lha --group-directories-first"
alias la="exa -lha --group-directories-first"

# tmux
alias tm="tmux"
alias tls="tmux ls"
alias tnew="tmux new -s"
alias ta="tmux a"
alias tat="tmux a -t"
alias tkill="tmux kill-session -t"
alias tses='tmux new -As $(basename $PWD | tr . -)'

# aws work stuff
alias awsl="eiamCli login"
alias awsc="eiamCli aws_creds -c -n cui-preprod"
alias awss="eiamCli aws_ssh -c -n cui-preprod"

# npm
alias ni="npm install"
alias nid="npm install --save-dev"
alias nun="npm uninstall"
alias ns="npm start"
alias nt="npm test"
alias nr="npm run"

# git
alias gitvis="git log --graph --oneline --all --decorate"

# paths
alias proj="cd ~/Documents/Projects"
alias d="cd ~/.dotfiles"
alias portfolio="cd ~/Documents/Projects/portfolio"
alias cfs="cd ~/dev/conversation-framework-service"
alias cds="cd ~/dev/cui-designer-service"
alias cdui="cd ~/dev/cui-conversation-designer-v2-ui"

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222"

# colorized cat
alias cat="ccat"

#alias docker rm exited container
alias rmcontainers="docker ps -aq --no-trunc -f status=exited | xargs docker rm"

#youtube download
alias ytdl="youtube-dl --audio-format mp3 -x "

# use python2.7
# alias python=/usr/local/bin/python2.7

# use python3.7
# alias python=/usr/local/bin/python3.7

# use agignore
alias ag="ag --path-to-agignore ~/.agignore"

# grep
alias -g G='| grep'

# use the correct term for ssh
alias ssh="TERM=xterm-256color ssh"

# recursively delete `.DS_Store` files from current folder
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# serve current directory on port 8080
alias serve="python -m SimpleHTTPServer"

# put removed files in trash
alias rm="trash"

# get current ip
alias getip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

stty erase ^H
stty erase '^?'

# ##################################################################################################
# Functions
# ##################################################################################################

# cd to the root of a git repository
cdr() {
  cd "$(git rev-parse --show-toplevel)"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
