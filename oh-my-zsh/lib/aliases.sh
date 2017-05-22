#SHELL
alias cl="clear"
alias eat="rm -rf"
alias gitll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias h="history"
#Capitstano
alias caps="be cap sandbox deploy"
alias capp="be cap production deploy"
# Rails
alias migrate="rake db:migrate db:test:prepare"
alias remigrate="rake db:drop db:create db:migrate db:test:prepare"
alias seed="rake db:seed"

alias cuke="clear && rake cucumber"
alias wip="clear && rake cucumber:wip"


# Hub
alias hb="hub browse"

# Git aliases
# alias g="git"
alias r="rspec"
alias rr="rake routes"
alias gst="git status -sb"
alias gpom="git push origin master"
alias glog='git log --pretty=format:"%C(yellow)%h%C(reset) %C(green)%ar%C(reset) %C(bold blue)%an%C(reset) %C(red)%d%C(reset) %s" --graph --abbrev-commit --decorate'
alias gd="git diff"
alias gap="git add -p"
alias gaa="git add ."
alias gc="git commit"
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -D"
alias gca="git commit --amend"
alias gmc='git ls-files --unmerged | cut -f2 | uniq' # git merge conflicts
alias glh="git lg | head"
alias grv="git remote -v"
alias gfo="git fetch origin"
alias gclr="git reset HEAD --hard ; git clean -fd"
alias gz="git archive -o snapshot.zip HEAD"
alias gt="git archive -o snapshot.tar.gz HEAD"
alias gpr="git --no-pager lg HEAD --not $1"
alias grp="git remote prune origin"
alias grhh="git reset HEAD --hard"
alias addit="git add ."
alias gpom="git push origin master"
alias gitcm="git commit -m"
alias gpoh="git push origin HEAD"
alias startlocal="python -m SimpleHTTPServer"

# Easily delete removed files from git index
grm() {
  git status | grep "deleted:" | awk '{print $2}' | xargs git rm --ignore-unmatch
}



# Bundler
alias bi="bundle install"
alias be="bundle exec"
alias bu="bundle update"


# File shortcuts

alias godev="cd ~/Dropbox/go/src"
alias dev="cd ~/Dropbox/Dev/Comcast/"
alias gru="cd ~/Dropbox/Dev/Comcast/opsen-gru"
alias gogogo="$GOPATH/bin/goconvey"
alias drop="cd ~/Dropbox"



# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history


# List direcory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

alias afind='ack-grep -il'

# My aliases
alias addit='git add -A'
alias be='bundle exec'
alias beg='bundle exec guard'
alias bi='bundle install'
alias brd='brew doctor'
alias bru='brew update'
alias dev='cd ~/dropbox/dev'
alias godev='cd ~/dropbox/go/src/github.com/rjrobinson'
alias gitcm='git commit -m'
alias gpoh='git push origin HEAD'
alias gpom='git push origin master'
alias launch='cd ~/dropbox/launchacademy'
alias makeitso="export EDITOR='subl -w'"
alias migrate='spring rake db:migrate && spring rake db:rollback && spring rake db:migrate'
alias mydev='cd ~/dropbox/dev/'
alias ohmyzsh='cd ~/.oh-my-zsh && subl .'
alias pushit='git push && afplay ~/Documents/gitSounds/gitStatus.mp3'
alias resetgit="rm -rf .git && git init && git add -A && git commit -m 'Initial commit'"
alias srs='spring rake spec'
alias qq='subl .'
alias micro='cd ~/dropbox/go/src/git.teltech.co'
alias gogogo='$GOPATH/bin/goconvey'

# Git Aliases
alias gs='git status'
alias co='checkout'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
# DOCKER

alias dc='docker container'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

if [ "$HIST_STAMPS" = "mm/dd/yyyy" ]
  then
  alias history='fc -fl 1'
elif [ "$HIST_STAMPS" = "dd.mm.yyyy" ]
  then
  alias history='fc -El 1'
elif [ "$HIST_STAMPS" = "yyyy-mm-dd" ]
  then
  alias history='fc -il 1'
else
  alias history='fc -l 1'
fi
