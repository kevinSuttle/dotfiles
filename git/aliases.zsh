# Use `hub` as our git wrapper:
# http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
        alias git=$hub_path
fi

# Git aliases
alias st='git status -sb'
alias ps='git push'
alias pl='git pull'
alias plr='git pull --rebase'
alias psom='git push origin master'
alias pshm='git push heroku master'
alias ho='heroku open'
alias l='git log --decorate --oneline --graph'
alias lg='git log --decorate --graph --abbrev-commit --date=relative'
alias d='git diff'
alias aa='git add .'
alias ai='git add -i'
alias ci='git commit'
alias ca='git commit --amend'
alias mg='git merge'
alias rbi='git rebase -i'
alias co='git checkout'
alias cb='git checkout -B'
alias com='git checkout master'
alias b='git branch --verbose'
alias bl='git branch --list --verbose'
alias ss='git stash save'
alias sa='git stash apply'
alias sl='git stash list '
alias sp='git stash pop'
alias sc='git stash clear'
alias sd='git stash drop'
