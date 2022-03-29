local return_status="%{$fg[red]%}%(?..<-)%{$reset_color%}"

local host_color="black"
if [ -n "$SSH_CLIENT" ]; then
  local host_color="red"
fi

PROMPT='
%{$fg_bold[grey]%}[%{$reset_color%}%{$fg_bold[${host_color}]%}%n@%m%{$reset_color%}%{$fg_bold[grey]%}]%{$reset_color%} %{$fg_bold[blue]%}%10c%{$reset_color%} $(git_prompt_info) $(git_remote_status)
%{$fg_bold[blue]%}>%{$reset_color%} '


RPROMPT='${return_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[grey]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[grey]%}) %{$fg[yellow]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[grey]%})"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}↕%{$reset_color%}"

