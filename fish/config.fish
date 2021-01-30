# colored man output
# from http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
setenv LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
setenv LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
setenv LESS_TERMCAP_me \e'[0m'           # end mode
setenv LESS_TERMCAP_se \e'[0m'           # end standout-mode
setenv LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
setenv LESS_TERMCAP_ue \e'[0m'           # end underline
setenv LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

set PATH $PATH:/home/kas/.cargo/bin

alias vim nvim
alias emacs "env TERM=xterm-24bit emacsclient -c -a="
alias cat bat
alias ls "exa --icons"
alias la "exa -la --icons"

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	echo -n (prompt_hostname)
	set_color brblack
	echo -n ':'
	set_color yellow
	echo -n (prompt_pwd)
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	if [ $status -ne 0 ];
		printf '[%d]' $status;
	end;
	echo -n '> '
	set_color normal
end

pyenv init - | source

zoxide init fish | source
starship init fish | source

thefuck --alias | source
