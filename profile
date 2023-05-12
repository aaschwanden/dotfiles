
# alias
alias em='emacs -nw -Q'
alias cdp='cd ~/pism/'
alias nch='ncdump -h'
alias ncv='ncview -minmax all'
alias lh='ls -lh'
alias cryomac='ssh -XY salbitschjien.gi.alaska.edu'
alias marmaduke='ssh -XY aaschwanden@beauregard.gi.alaska.edu'
alias chinook="ssh -XY aaschwanden@chinook03.alaska.edu"
alias pleiades="ssh -Y -t aaschwan@pfe 'bash -l'"
alias lou="ssh -Y -t aaschwan@lou 'bash -l'"
alias ldan="ssh -Y -t aaschwan@ldan4 'bash -l'"
alias sshiftc="sup shiftc --sync --clients=2 -r"

ulimit -S -n 2048
export HDF5_USE_FILE_LOCKING=FALSE


# PETSc stuff
export PETSC_DIR=$HOME/petsc
export PETSC_ARCH=macosx

export GDAL_DATA=/opt/local/share/gdal
export PYTHONPATH=/Users/andy/Library/Python/3.11/lib/python/site-packages/:~/python/site-packages:~/pism/util:~/pism/lib/python3.11/site-packages:/Applications/MacPorts/QGIS.app/Contents/Resources/pythone:$PETSC_DIR/$PETSC_ARCH/lib:$PYTHONPATH


export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# additional path
export PATH=~/Library/Python/3.11/bin:~/local/bin:$PETSC_DIR/$PETSC_ARCH/bin/:~/pism/bin:~/pism/util:/usr/texbin/:~/bin:$PATH
export XFILESEARCHPATH=/usr/X11R6/lib/X11/app-defaults/%N:/opt/local/lib/X11/appdefaults/%N

# for bash completion
if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
    fi




# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:/Users/andy/Library/Python/3.11/bin:${PATH}"
export PATH
