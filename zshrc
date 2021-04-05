# Set up the prompt
autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export DOCKER_HOST=tcp://localhost:2375
export GOROOT="/usr/local/go"
export GOPATH="/home/pradyumna/Coding/GoWorkspace/"
export PATH=$PATH:"/usr/local/go/bin"

# FPSG cluster

# Servers
alias hw="ssh pshome2@highwind.cs.illinois.edu"
alias rr="ssh pshome2@ragnarok.cs.illinois.edu"
alias dn="ssh pshome2@dreadnought.cs.illinois.edu"

# Commands
alias cs="condor_submit"
alias wj="watch -n 1 condor_q"

# UIUC
alias ews="ssh pshome2@linux.ews.illinois.edu"

# Stack
export PATH="$PATH:$HOME/stack-2.5.1-linux-x86_64"

# ssh configuration
eval $(ssh-agent -s)
private_key_string=$(find ~/.ssh -name "id_*" -and -not -name "*.pub" | tr '\n' ' ')
for private_key in $( echo $private_key_string );
do
    ssh-add $private_key;
done

# PyEnv
export PATH="/home/pradyumna/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
