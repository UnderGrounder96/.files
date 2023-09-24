# User zprofile
if [ -f ~/.zprofile ]; then
  . ~/.zprofile
fi

# User bashrc
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
