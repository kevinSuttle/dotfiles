# Use `hub` as our git wrapper:
# http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
	alias git=$hub_path
fi

alias gs='git status -sb'
alias gp='git push'
alias gpom='git push origin master'
alias gphm='git push heroku master'
alias ho='heroku open'
alias gpr='git pull --rebase'
alias glo='git log --decorate --oneline --graph'
alias gle='git log --decorate --graph --abbrev-commit --date=relative'
alias gd='git diff'
alias gaa='git add .'
alias gai='git add -i'
alias gci='git commit'
alias gca='git commit --amend'
alias gm='git merge'
alias gri='git rebase -i'
alias gco='git checkout'
alias gcb='git checkout -B'
alias gcom='git checkout master'
alias gb='git branch --verbose'
alias gbl='git branch --list --verbose'
alias gsh='git stash save'
alias gsa='git stash apply'
alias gsp='git stash pop'
alias gsc='git stash clear'
