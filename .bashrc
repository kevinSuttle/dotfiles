for file in ~/.{aliases,colors,exports,functions,bash_profile}; do
	[ -r "$file" ] && source "$file"
done
unset file
