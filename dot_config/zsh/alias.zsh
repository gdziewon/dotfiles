alias open="xdg-open"

alias cls="clear"

# I love this.
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias tarnow='tar -acf '
alias untar='tar -zxvf'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# gst is to long!~
alias gs='git status'

# Replace ls with eza
if command -v eza >/dev/null 2>&1; then
    alias ls='eza -al --color=always --group-directories-first --icons=always' # preferred listing
    alias la='eza -a --color=always --group-directories-first --icons=always'  # all files and dirs
    alias ll='eza -l --color=always --group-directories-first --icons=always'  # long format
    alias lt='eza -aT --color=always --group-directories-first --icons=always' # tree listing
    alias l.="eza -a | grep -e '^\.'"                               # show only dotfiles
fi

# Arch specific
if command -v pacman >/dev/null 2>&1; then
    alias rmpkg="sudo pacman -Rsn"
    alias cleanch="sudo pacman -Scc"
    alias fixpacman="sudo rm /var/lib/pacman/db.lck"
    alias upd="sudo pacman -Syu && paru -Syu"

    # Cleanup orphaned packages
    alias cleanup="sudo pacman -Rsn $(pacman -Qtdq)"

    # Recent installed packages
    alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
fi

# Specifically for kitty
if [[ $TERM == "xterm-kitty" ]]; then
    alias sshk="kitty +kitten ssh"
    # for minimal systems like openwrt
    alias ssht="TERM=xterm-256color ssh"
    alias clear="clear -T xterm-256color"
fi

# if we have bat todo: 'batcat' handling?
if command -v bat >/dev/null 2>&1; then
    alias cat="bat -pp"
    alias less="bat --paging=always"
    alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
    alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
fi
