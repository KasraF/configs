export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
export PS1="\[\033[38;5;3m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export PATH=$PATH:~/.cargo/bin:~/.local/bin:/opt/Android/sdk/bin;
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

alias ls=exa
alias cat=bat

exec fish

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
