
# alias
alias em='emacs -nw -Q'
alias cdp='cd ~/pism/'
alias nch='ncdump -h'
alias ncv='ncview -minmax all'
alias lh='ls -lh'
alias ipy='jupyter-qtconsole  &'
alias cryomac='ssh -XY salbitschjien.gi.alaska.edu'
alias marmaduke='ssh -XY aaschwanden@beauregard.gi.alaska.edu'
alias chinook="ssh -XY aaschwanden@chinook02.alaska.edu"
alias pleiades="ssh -Y -t aaschwan@pfe 'bash -l'"
alias lou="ssh -Y -t aaschwan@lou 'bash -l'"
alias ldan="ssh -Y -t aaschwan@ldan4 'bash -l'"
alias sshiftc="sup shiftc --sync --clients=2 --remote=bbftp -r"

ulimit -S -n 2048

export GDAL_DATA=/opt/local/share/gdal
export PYTHONPATH=~/python/site-packages:~/pism/util:~/pism/lib/python3.6/site-packages:/Applications/MacPorts/QGIS.app/Contents/Resources/python

# PETSc stuff
export PETSC_DIR=~/petsc
export PETSC_ARCH=macosx

# MacPorts Installer addition on 2017-02-21_at_18:39:48: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# additional path
export PATH=~/local/bin:$PETSC_DIR/$PETSC_ARCH/bin/:~/pism/bin:~/pism/util:~/pism/test:~/base/ice/util:/usr/texbin/:~/bin:$PATH
export XFILESEARCHPATH=/usr/X11R6/lib/X11/app-defaults/%N:/opt/local/lib/X11/appdefaults/%N

# for bash completion
if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
    fi




# Setting PATH for Python 3.6
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:/Users/andy/Library/Python/3.6/bin:${PATH}"
export PATH
