# Git branch as red in the right of the $
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1='\[\e[1;36m\][\u@\h]\[\e[1;37m\]:\w\[\033[1;31m\]$(parse_git_branch)\[\e[1;37m\] \$\[\e[0m\] '

# Fzf to find commands in history
fzf-history() {
    READLINE_LINE=$(history | awk '{$1=""; print substr($0,2)}' | fzf +s --reverse)
    READLINE_POINT=${#READLINE_LINE}
}
bind -x '"\C-r": fzf-history'

# opening neovim in the current directory and mapping "v" to neovim
v() {
    if [ "$#" -eq 0 ]; then
        nvim .
    else
        nvim "$@"
    fi
}
