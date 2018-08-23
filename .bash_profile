[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# determine git branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[00m\]\[\033[0;35m\]$(parse_git_branch)\[\033[00m\]$ "
export PS1="\[\033[33;1m\]\w\[\033[00m\]\[\033[0;35m\]\$(parse_git_branch)\[\033[00m\]$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# some more ls aliases
alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

eval "$(nodenv init -)"

# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
alias code='open -a /Applications/Visual\ Studio\ Code.app'
