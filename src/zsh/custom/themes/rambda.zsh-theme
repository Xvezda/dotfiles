PROMPT='%{$fg[cyan]%}%~/%{$reset_color%} ${GITSTATUS_PROMPT}'
if ! type gitstatus_query &>/dev/null; then  # Fallback
    PROMPT+='$(git_prompt_info)'
fi

PROMPT+=$'\n''%{$fg[red]%}λ%{$reset_color%} '
