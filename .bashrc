# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
function dynamic_prompt {
    local LAST_RESULT=$?

    # Directory
    PS1="\n\[\e[1;94m\]$(dirs)"

    # Git branch
    local GIT_BRANCH=$(git branch --show-current 2> /dev/null)
    if [[ ! -z "$GIT_BRANCH" ]]; then
        PS1+=" \[\e[1;33m\](${GIT_BRANCH})"

        # Git status
        local GIT_STATUS=$(git status --porcelain | wc -l)
        if [[ "$GIT_STATUS" -gt 0 ]]; then
            PS1+="±${GIT_STATUS}"
        fi
    fi

    # Arrow
    if [[ "$LAST_RESULT" -eq 0 ]]; then
        PS1+="\n\[\e[1;92m\]➜"
    else
        PS1+="\n\[\e[1;91m\]➜"
    fi

    PS1+="\[\e[0m\] "
}
PROMPT_COMMAND=dynamic_prompt
# PS1='\n\[\e[1;94m\]\w\n\[\e[1;92m\]➜\[\e[0m\] '

# Aliases
if [[ -f ~/.bash_aliases && -r ~/.bash_aliases ]]; then
    . ~/.bash_aliases
fi

# Completion
if [[ -f /usr/share/bash-completion/bash_completion && -r /usr/share/bash-completion/bash_completion ]]; then
    . /usr/share/bash-completion/bash_completion
fi
