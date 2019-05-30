export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
export PS1="\[\033[38;5;3m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]>\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export PATH=$PATH:~/.cargo/bin:~/.local/bin

alias ls=exa
alias cat=bat
