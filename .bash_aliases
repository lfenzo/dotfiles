alias s='ls -lah --color=auto'
alias sourceenv='source ./env/bin/activate'
alias podlatex='podman run --rm -v "$(pwd)":/data -w /data texlive/texlive:latest latexmk -lualatex'
