set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch magenta
set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead " ⇡"
set -g __fish_git_prompt_char_upstream_behind " ⇣"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate " ●"
set -g __fish_git_prompt_char_dirtystate " *"
set -g __fish_git_prompt_char_untrackedfiles ""
set -g __fish_git_prompt_char_conflictedstate " ✖"
set -g __fish_git_prompt_char_cleanstate " ✓"
set __fish_git_prompt_showstashstate true

set -g __fish_git_prompt_color_dirtystate yellow
set -g __fish_git_prompt_color_stagedstate blue
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green
set -g ___fish_git_prompt_char_stateseparator " |"

function fish_right_prompt
	set_color $fish_color_cwd
	printf (date +"%r ")
end

function fish_prompt --description 'Write out the prompt'
	echo -e ""
	set -l last_status $status

	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	# PWD
	set_color $fish_color_cwd
	echo -n (pwd)
	set_color normal

	printf '%s ' (__fish_git_prompt)

	if not test $last_status -eq 0
		set_color $fish_color_error
	end

	set_color magenta
	printf '\n❯ '
	set_color normal
end
