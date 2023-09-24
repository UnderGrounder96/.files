# start ~/.bashrc
# User specific environment

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00m\] "

if [ -f ~/.bash_git ]; then
  . ~/.bash_git
  GIT_PS1='\[\033[01;35m\]$(__git_ps1)\[\033[00m\]\n'
  export PS1="${PS1}${GIT_PS1}"
fi

# User specific aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
