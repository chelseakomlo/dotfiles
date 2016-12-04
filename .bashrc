export GOPATH=$HOME/gopkg
export PATH=$PATH:$GOPATH/bin:/usr/local/lib

alias gpg='gpg2'
alias open='xdg-open'

alias start-tor='sudo systemctl start tor'
alias start-docker='sudo systemctl start docker'

alias copy='xsel --clipboard --input'
alias paste='xsel --clipboard --output'
