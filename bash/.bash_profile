source ~/.bashrc

# Bash 4.0 settings
shopt -s globstar autocd

# Make 'cd' more forgiving http://blog.sanctum.geek.nz/smarter-directory-navigation/
shopt -s cdspell

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Defaults
export PATH="/usr/local/bin:$PATH"

# Functions
simple_prompt_on() {
	PS1="\[\e[1;30m\]☰  \e[0m"
}

full_prompt_on() {
	PS1="\[\033]0;\007\]\[\e[1;30m\]☰  \e[0m"
}
prompt_off() {
	PS1="\$ "
}

case $TERM in
    xterm*)
	    full_prompt_on 
        ;;
    *)
	    simple_prompt_on
        ;;
esac

# For Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
