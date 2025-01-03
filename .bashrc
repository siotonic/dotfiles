# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='\n\[\e[1;94m\]\w\n\[\e[1;92m\]➜\[\e[0m\] '

# Aliases
if [[ -f ~/.bash_aliases && -r ~/.bash_aliases ]]; then
    . ~/.bash_aliases
fi

# Completion
if [[ -f /usr/share/bash-completion/bash_completion && -r /usr/share/bash-completion/bash_completion ]]; then
    . /usr/share/bash-completion/bash_completion
fi
