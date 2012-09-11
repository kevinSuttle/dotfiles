autoload -U promptinit
promptinit

# FUNCTIONS
precmd() {
	chpwd
}

chpwd() {
	 print -Pn "\e]0; %~\a"
	# echo $PWD
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
