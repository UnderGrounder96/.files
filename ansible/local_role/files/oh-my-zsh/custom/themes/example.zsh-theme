# Put your custom themes in this folder.
# See: https://github.com/ohmyzsh/ohmyzsh/wiki/Customization#overriding-and-adding-themes
#
# Example:

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

PROMPT='
%{$fg[cyan]%}%n%{$reset_color%} %1~ $(git_prompt_info)%{$reset_color%}%{$fg[red]%}${VIRTUAL_ENV:+[venv]}%{$reset_color%}
λ '
