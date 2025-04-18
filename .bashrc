parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1='\[\e[1;36m\][\u@\h]\[\e[1;37m\]:\w\[\033[1;31m\]$(parse_git_branch)\[\e[1;37m\] \$\[\e[0m\] '

# muda a cor das coisas no comandos ls
LS_COLORS="di=1;35:ow=1;35"
