source ~/.bashrc

autoload -U colors && colors

PROMPT="%{$fg_bold[black]%}☰ $reset_color "

# FUNCTIONS
 precmd() {
 	chpwd
 }

chpwd() {
 print -Pn "\e]0;%n@%m: %~\a"
}
