 # Mouse scrolling in journactl - todo: side scroll?
export SYSTEMD_LESS="FRSMK"

# Ignore commands that start with spaces and duplicates.
export HISTCONTROL=ignoreboth

# Don't add certain commands to the history file.
export HISTORY_IGNORE="(\&|[bf]g|c|clear|cls|history|exit|q|pwd)"


# Use custom `less` colors for `man` pages
export LESS_TERMCAP_md="$(tput bold 2> /dev/null; tput setaf 2 2> /dev/null)"
export LESS_TERMCAP_me="$(tput sgr0 2> /dev/null)"

# Make new shells get the history lines from all previous
# shells instead of the default "last window closed" history.
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export EDITOR='nvim'



export FZF_BASE=/usr/share/fzf
