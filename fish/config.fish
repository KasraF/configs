# colored man output
# from http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
setenv LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
setenv LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
setenv LESS_TERMCAP_me \e'[0m'           # end mode
setenv LESS_TERMCAP_se \e'[0m'           # end standout-mode
setenv LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
setenv LESS_TERMCAP_ue \e'[0m'           # end underline
setenv LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

# Set Path
set PATH /home/kas/.cargo/bin /home/kas/.local/bin /home/kas/.elan/bin /home/kas/go/bin /home/kas/.yarn/bin $PATH
set CC /usr/bin/clang
set CPP /usr/bin/clang++

alias la "exa -la --icons"
alias hx "helix"
alias vim nvim
alias vi nvim
alias emacs 'emacsclient -a "" -nc'

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
	echo -n '> '
	set_color normal
end

zoxide init fish | source
starship init fish | source

# opam configuration
source /home/kas/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/kas/.ghcup/bin $PATH # ghcup-env