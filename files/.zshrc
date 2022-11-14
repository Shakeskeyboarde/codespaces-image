autoload -Uz compinit promptinit
compinit
promptinit

export PS1="%B%F{cyan}%(4~|...|)%3~%F{white} %# %b%f%k"
export PATH=/root/bin:$PATH

alias ls="ls -al --color=auto"
alias mknew="npx mknew -s https://github.com/Shakeskeyboarde/templates.git"
