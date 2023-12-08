
# alias
alias em='emacs -nw -Q'
alias cdp='cd ~/pism/'
alias nch='ncdump -h'
alias ncv='ncview -minmax all'
alias lh='ls -lh'
alias chinook="ssh -XY aaschwanden@chinook03.alaska.edu"
alias pleiades="ssh -Y -t aaschwan@pfe 'bash -l'"
alias lou="ssh -Y -t aaschwan@lou 'bash -l'"
alias ldan="ssh -Y -t aaschwan@ldan4 'bash -l'"
alias sshiftc="sup shiftc --sync --clients=2 -r"

ulimit -S -n 2048
export HDF5_USE_FILE_LOCKING=FALSE

# export PATH=/Library/TeX/texbin/:$PATH

alias env_ports='. $HOME/base/dotfiles/profile_ports'
alias env_brew='. $HOME/base/dotfiles/profile_brew'
alias env_conda='. $HOME/base/dotfiles/profile_conda'

export PISM_PREFIX=$HOME/pism


