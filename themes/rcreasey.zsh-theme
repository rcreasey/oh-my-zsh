ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%} %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%} %{$fg[green]%}✔%{$reset_color%}"

setopt prompt_subst
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

RPS1="${return_code}"
PROMPT='%(?,%{%F{cyan}%},%{%F{red}%})%m:%{%F{white}%}%~ %{%F{gray}%}$(rvm_prompt_info)%{$reset_color%} $(git_prompt_info)%#%{$reset_color%} '
