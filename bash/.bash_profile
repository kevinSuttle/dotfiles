source ~/.bashrc

# Bash 4.0 settings
shopt -s globstar autocd

# Make 'cd' more forgiving http://blog.sanctum.geek.nz/smarter-directory-navigation/
shopt -s cdspell

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Defaults
PATH=$PATH:$HOME:/usr/local/bin:/.rvm/bin # Add RVM to PATH for scripting
case $TERM in
    xterm*)
        PS1="\[\033]0;\007\]\[\e[1;30m\]☰  \e[0m"
        ;;
    *)
        PS1="\[\e[1;30m\]☰  \e[0m"
        ;;
esac

# Functions
prompt_on() {
	PS1="\[\e[1;30m\]☰  \e[0m"
}
prompt_off() {
	    PS1='\$ '
}