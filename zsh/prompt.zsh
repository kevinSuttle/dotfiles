autoload -U promptinit
promptinit

# FUNCTIONS
precmd() {
	chpwd
}

chpwd() {
	# Set Terminal title to current directory dynamically
	 print -Pn "\e]0; %~\a"
}

simple_prompt_on() {
	PROMPT="%{$fg_bold[black]%}☰ $reset_color "
}

full_prompt_on() {
	PROMPT="%{$fg_bold[black]%}☰ $reset_color "
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
