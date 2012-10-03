# Use `hub` as our git wrapper:
# http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
        alias git=$hub_path
fi

# Git aliases
alias gs='git status -sb'
alias gph='git push'
alias gpl='git pull'
alias gpr='git pull --rebase'
alias gpom='git push origin master'
alias glo='git log --decorate --oneline --graph'
alias glg='git log --decorate --graph --abbrev-commit --date=relative'
alias gd='git diff'
alias ga='git add'
alias gA='git add -A'
alias gai='git add -i'
alias gc='git commit'
alias gca='git commit --amend'
alias gmg='git merge'
alias gri='git rebase -i'
alias gco='git checkout'
alias gcb='git checkout -B'
alias gcm='git checkout master'
alias gb='git branch --verbose'
alias gbl='git branch --list --verbose'
alias gss='git stash save'
alias gsa='git stash apply'
alias gsl='git stash list '
alias gsp='git stash pop'
alias gsc='git stash clear'
alias gsd='git stash drop'
alias gphm='git push heroku master'
alias ho='heroku open'
