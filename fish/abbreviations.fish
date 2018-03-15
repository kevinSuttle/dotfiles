abbr -a ga git add
abbr -a gb git branch --verbose
abbr -a gc git commit -s --verbose
abbr -a gcl git clone --single-branch --verbose
abbr -a gco git checkout
abbr -a gcom git checkout master
abbr -a gd git diff
abbr -a gf git fetch --prune --all
abbr -a gh git help
abbr -a gl 'git log --graph --pretty format:"%C(cyan)%h%C(red)%d %C(yellow)%ar%C(white) %s %C(black)- %an"'
abbr -a gm git merge --no-ff
abbr -a gph git push
abbr -a gpl git pull  --prune
abbr -a gplr git pull --rebase
abbr -a gr git remote --verbose
abbr -a gs git status --short --branch
abbr -a gt git tag
abbr -a gu "git reset --soft 'HEAD^'"

# List files, including hidden ones
abbr -a ls ls -1pAFG
# TODO make this a function
abbr -a shf defaults write com.apple.finder AppleShowAllFiles -bool true
abbr -a hhf defaults write com.apple.finder AppleShowAllFiles -bool false

# Easier navigation: Thanks @mathiasbynens, @gf3, et al.
abbr -a .. cd ..
<<<<<<< HEAD
abbr -a cdc cd ~/Code/
abbr -a cdd cd ~/Downloads
abbr -a cddf cd ~/Code/dotfiles
abbr -a cdl cd ~/Code/laptop
abbr -a cds cd ~/Code/kevinsuttle.github.io
=======
abbr -a cdc cd ~/code/
abbr -a cdd cd ~/Downloads
abbr -a cddf cd ~/code/dotfiles
abbr -a cdl cd ~/code/laptop
abbr -a cds cd ~/code/kevinsuttle.github.io
>>>>>>> Update configs based on usage

# Application Shortcuts
abbr -a start_server "python -m SimpleHTTPServer"

# Commands
abbr -a get_sha "openssl dgst -sha256 <"
abbr -a serve python -m SimpleHTTPServer
abbr -a copyssh "pbcopy < ~/.ssh/id_rsa.pub"

abbr -a efc atom ~/.config/fish/config.fish
abbr -a eff atom ~/.config/fish/functions
abbr -a efp atom ~/.config/fish/functions/fish_prompt
abbr -a efa atom ~/.config/fish/abbreviations.fish
abbr -a r source ~/.config/fish/config.fish
abbr -a f exec fish
