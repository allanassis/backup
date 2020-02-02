[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# determine git branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\][\d \t]:\[\033[36m\]\w\[\033[00m\]\[\033[0;35m\]$(parse_git_branch)\[\033[00m\]$ "
export CLICOLOR=1
export LSCOLORS=dxFxBxDxCxegedabagacad

# for vscode
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# exporting GOPATH
# export PATH=$PATH:/Users/allanandrade/go/bin/

# for nvm works
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# for pyenv virtualenv works
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"


# for open vscode
#alias code='open -a /Applications/Visual\ Studio\ Code.app'

alias chrome='open -a "Google Chrome"'
