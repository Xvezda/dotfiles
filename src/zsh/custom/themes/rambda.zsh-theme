PROMPT='%{$fg[cyan]%}%~/%{$reset_color%} ${GITSTATUS_PROMPT}'
if ! type gitstatus_query &>/dev/null; then  # Fallback
    PROMPT+='$(git_prompt_info)'
    ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
fi

PROMPT+=$'\n''%{$fg[red]%}λ%{$reset_color%} '
