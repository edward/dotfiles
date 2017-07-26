if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi

export GITHUB_TOKEN_CI_STATUS=YOUR_GITHUB_TOKEN_GOES_HERE

export GIT_EDITOR="sublime --wait"

alias gs='git status'
alias gb='git branch'
alias gd='git diff'
alias gfp='git push origin +`git symbolic-ref -q --short HEAD`'
alias grm='git fetch && git rebase `script/ci_last_green_master`'
alias grh='git fetch && git reset --hard origin/`git symbolic-ref -q --short HEAD`'

np() {
  git checkout master && git pull && git checkout -b "$1"
}

alias "reload-bash"='source ~/.bash_profile'

alias e='sublime'
alias be='bundle exec'

alias ds='TDD=0 dev server'
alias lgm='script/ci_last_green_master'

alias lb='git branch --sort=-committerdate | head -n 5'
