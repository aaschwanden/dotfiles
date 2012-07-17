# MacPorts Installer addition on 2009-09-17_at_15:58:48: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# ######################################
# Changes made by AA
# ######################################

# alias
alias nch='ncdump -h'
alias ncv='~/local/bin/ncview -minmax all'
alias lh='ls -lh'
alias ipy='ipython'
alias marmaduke='ssh -XY aaschwanden@marmaduke.gi.alaska.edu'
alias pacman="ssh -XY aschwand@pacman.arsc.edu"
alias idv="/Applications/IDV_3.0/runIDV"

# PETSc stuff
export PETSC_DIR=~/petsc-3.2
export PETSC_ARCH=ompi-opt

# additional path
export PATH=$PETSC_DIR/$PETSC_ARCH/bin/:~/pism-dev/bin:~/pism-dev/util:~/pism-dev/test:~/base/ice/util:/usr/texbin/:~/bin:/usr/local/krb5/bin:/usr/local/ossh/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH
export XFILESEARCHPATH=/usr/X11R6/lib/X11/app-defaults/%N:/opt/local/lib/X11/appdefaults/%N

# for bash completion
if [ -f /opt/local/etc/bash_completion ]; then
        . /opt/local/etc/bash_completion
    fi

# PyNGL related stuff
export PYNGL_COLORMAPS=~/PyNGL/colormaps
export NCARG_RANGS=~/PyNGL/rangs/

# PISM related stuff
export PISM_REVISION=testing
export PISM_DO=echo

# MacPorts QGIS installation with python bindings
export PYTHONPATH=/Applications/MacPorts/QGIS.app/Contents/Resources/python