# Path to your oh-my-zsh configuration.
echo "dotfiles v. 5-10-2017"
export ZSH=$HOME/.dotfiles/oh-my-zsh
# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome

POWERLEVEL9K_MODE='awesome-patched'

export ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(rvm dir vcs aws)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time docker_machine)
POWERLEVEL9K_NVM_FOREGROUND='000'
POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true

#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="false"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colorize compleat dirpersist autojump git gulp history cp)

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source /usr/local/opt/nvm/nvm.sh
source $ZSH/lib/*

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use &> /dev/null
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    nvm use default &> /dev/null
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Customize to your needs...
unsetopt correct


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# GO
###############################
###############################
export GOPATH=$HOME/Dropbox/go
export PATH=$GOPATH/bin:$PATH

export PATH=$PATH:/usr/local/sbin
#source $ZSH/oh-my-zsh.sh
export PATH=/usr/local/opt/qt5/bin:$PATH
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
source /Users/rrobin244/.rvm/scripts/rvm

# MYSQL
export MYSQL_PATH=/usr/local/Cellar/mysql/5.7.17/
export PATH=$PATH:$MYSQL_PATH/bin
