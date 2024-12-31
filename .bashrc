# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
if [ -r ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Completion
if [[ -r /usr/share/bash-completion/bash_completion ]]; then
    . /usr/share/bash-completion/bash_completion
fi

# Prompt
dynamic_prompt() {
    local LAST_RESULT=$?

    # Directory
    echo -en '\n\033[1;34m' # blue (bold)
    echo -n $(dirs)

    # Git
    local GIT_BRANCH=$(git branch --show-current 2> /dev/null)
    if [ ! -z "$GIT_BRANCH" ]; then
        echo -en ' \033[1;33m' # yellow (bold)
        echo -n "($GIT_BRANCH)"

        # Git status
        local GIT_STATUS=$(git status --porcelain | wc -l)
        if [ ! "$GIT_STATUS" -eq 0 ]; then
            echo -n "±$GIT_STATUS"
        fi
    fi

    # Arrow with success/error color
    echo -en '\n'
    if [ $LAST_RESULT -eq 0 ]; then
        echo -en '\033[1;32m' # green (bold)
    else
        echo -en '\033[1;31m' # red (bold)
    fi
    echo -en '➜'
}
PS1='$(dynamic_prompt)\033[0;00m '
# PS1='\n\[\033[1;34m\]\w\[\033[1;33m\]\n\[\033[1;32m\]➜\[\033[0;00m\] '
