set PROMPT_DIRTRIM=1

PS1="\[${bold}${white}\]\n${PROMPT_CHARACTER} \[${reset}\]"; # `$` (and reset color)
export PS1;

PS2="\[${yellow}\]→ \[${reset}\]";
export PS2;
