# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
dynamic_prompt() {
    local LAST_RESULT=$?

    # Directory
    echo -en '\n\e[1;94m' # blue (bold)
    echo -n $(dirs)

    # Git
    local GIT_BRANCH=$(git branch --show-current 2> /dev/null)
    if [ ! -z "$GIT_BRANCH" ]; then
        echo -en ' \e[1;93m' # yellow (bold)
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
        echo -en '\e[1;92m' # green (bold)
    else
        echo -en '\e[1;91m' # red (bold)
    fi
    echo -n '➜'
}
PS1='$(dynamic_prompt)\e[0m '
# PS1='\n\e[1;94m\w\n\e[1;92m➜\e[0m '

# Aliases
if [ -r ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Completion
if [ -r /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi
