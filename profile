# MacPorts Installer addition on 2013-06-12_at_11:28:59: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# alias
alias cdp='cd ~/pism/'
alias nch='ncdump -h'
alias ncv='ncview -minmax all'
alias lh='ls -lh'
alias ipy='ipython qtconsole --pylab &'
alias cryomac='ssh -XY cryomac.gi.alaska.edu'
alias marmaduke='ssh -XY aaschwanden@beauregard.gi.alaska.edu'
alias pacman="ssh -XY aschwand@pacman3.arsc.edu"
alias fish="ssh -XY aschwand@fish2.arsc.edu"
alias idv="/Applications/IDV/runIDV"

#alias mpirun='/opt/local/bin/openmpirun'
#alias mpiexec='/opt/local/bin/openmpiexec'
#export CC=/opt/local/bin/openmpicc
#export CXX=/opt/local/bin/openmpicxx

export PYTHONPATH=~/pism/lib/python2.7/site-packages:$PYTHONPATH

# PETSc stuff
export PETSC_DIR=~/petsc
export PETSC_ARCH=macosx

#source ~/FEniCS/share/fenics/fenics.conf 

# additional path
export PATH=~/local/bin:$PETSC_DIR/$PETSC_ARCH/bin/:~/pism/bin:~/pism/util:~/pism/test:~/base/ice/util:/usr/texbin/:~/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH
export XFILESEARCHPATH=/usr/X11R6/lib/X11/app-defaults/%N:/opt/local/lib/X11/appdefaults/%N

# for bash completion
if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
    fi


# PISM related stuff
export PISM_REVISION=testing
export PISM_DO=echo

##
# Your previous /Users/andy/.profile file was backed up as /Users/andy/.profile.macports-saved_2014-03-05_at_09:55:00
##

# MacPorts Installer addition on 2014-03-05_at_09:55:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

