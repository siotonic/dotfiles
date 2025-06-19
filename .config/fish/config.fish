# Greeting
set -g fish_greeting

# Prompt
function fish_prompt
    set arrow \uE0B0
    set last_status $status

    # Directory
    set_color -b 3F3F3F white --bold && printf " $(dirs) "

    # Status
    if test $last_status -ne 0
        set_color -b red 3F3F3F && printf $arrow
        set_color -b red white --bold && printf " $last_status "
        set_color -b normal red && printf $arrow
    else
        set_color -b normal 3F3F3F && printf $arrow
    end

    # Command
    set_color normal && echo -n " "
end

# Abbreviations
abbr -a ll -- 'ls -la'
abbr -a n -- 'nvim'
abbr -a v -- 'vim'
