parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

fzf-history() {
    READLINE_LINE=$(history | awk '{$1=""; print substr($0,2)}' | fzf +s --reverse)
    READLINE_POINT=${#READLINE_LINE}
}

v() {
    if [ "$#" -eq 0 ]; then
        nvim .
    else
        nvim "$@"
    fi
}

bind -x '"\C-r": fzf-history'

export PS1='\[\e[1;36m\][\u@\h]\[\e[1;37m\]:\w\[\033[1;31m\]$(parse_git_branch)\[\e[1;37m\] \$\[\e[0m\] '
export PATH="$PATH:$HOME/.local/bin"
export LS_COLORS="$LS_COLORS:di=1;33"  # directory colors in yellow
export EDITOR=nvim
export VISUAL=nvim
