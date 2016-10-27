# MacPorts Installer addition on 2013-06-12_at_11:28:59: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# alias
alias em='emacs -nw -Q'
alias cdp='cd ~/pism/'
alias nch='ncdump -h'
alias ncv='ncview -minmax all'
alias lh='ls -lh'
alias ipy='jupyter qtconsole  &'
alias cryomac='ssh -XY salbitschjien.gi.alaska.edu'
alias marmaduke='ssh -XY aaschwanden@beauregard.gi.alaska.edu'
alias pacman="ssh -XY aschwand@pacman3.arsc.edu"
alias chinook="ssh -XY aaschwanden@chinook01.alaska.edu"
alias pleiades="ssh -Y -t aaschwan@pfe 'bash -l'"
alias lou="ssh -Y -t aaschwan@lou 'bash -l'"
alias ldan="ssh -Y -t aaschwan@ldan9 'bash -l'"
alias fish="ssh -XY aschwand@fish2.arsc.edu"
alias idv="/Applications/IDV/runIDV"

#alias mpirun='/opt/local/bin/openmpirun'
#alias mpiexec='/opt/local/bin/openmpiexec'
#export CC=/opt/local/bin/openmpicc
#export CXX=/opt/local/bin/openmpicxx

export GDAL_DATA=/opt/local/share/gdal
export PYTHONPATH=~/python/site-packages:~/pism/util:~/pism/lib/python2.7/site-packages:/Applications/MacPorts/QGIS.app/Contents/Resources/python:$PYTHONPATH

# PETSc stuff
export PETSC_DIR=~/petsc
export PETSC_ARCH=macosx

#source ~/FEniCS/share/fenics/fenics.conf 

# additional path
export PATH=~/Library/Python/2.7/bin:~/local/bin:$PETSC_DIR/$PETSC_ARCH/bin/:~/pism/bin:~/pism/util:~/pism/test:~/base/ice/util:/usr/texbin/:~/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/local/lib/postgresql93/bin:$PATH
export XFILESEARCHPATH=/usr/X11R6/lib/X11/app-defaults/%N:/opt/local/lib/X11/appdefaults/%N

# for bash completion
if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
    fi


# PISM related stuff
export PISM_REVISION=testing
export PISM_DO=echo

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"




##
# Your previous /Users/andy/.profile file was backed up as /Users/andy/.profile.macports-saved_2016-08-10_at_16:10:12
##

# MacPorts Installer addition on 2016-08-10_at_16:10:12: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

