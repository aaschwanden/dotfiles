#!/bin/bash

sudo port -v install  \
     git wget emacs-app proj fftw-3 gsl \
     hdf5 +mpich +threadsafe \
     netcdf +mpich \
     py-netcdf4 +mpich \
     qt4-mac py-pyqt4 py-qtconsole \
     py-fiona \
     py-gdal \
     py-pip \
     cdo +mpich +grib_api \
     nco +mpich \
     gdal +geos +grib +hdf5 +netcdf +mpich +postgres96 +spatialite +sqlite3 \
     py-pyproj \
     py-jupyter \     
     py-pandas \
     py-matplotlib-basemap \
     fondu \
     py-statsmodels \
     grass7 \
     ffmpeg +nonfree +high10 \
     ncview \
     petsc +mumps +parmetis +superlu_dist +suitesparse \
     dolfin + \
     

     
sudo port -v install cmake \
py27-numpy \
py27-matplotlib-basemap \
git-core +bash_completion+credential_osxkeychain+doc+pcre+python27+svn \
gdal +python27 +netcdf +hdf5 +expat +curl +geos \
GitX \
fftw-3 \
proj \
py27-pyproj \
py27-pandas \
py27-scikits-statsmodels \
qgis +grass +python27 \
nco \
ncview \
py27-pip \
swig \
swig-python \
mercurial \
cdo \
py27-cython \
py27-pil \
py27-ipython +parallel +pyqt4 +notebook \
py27-scipy \
py27-sip \
xorg \
udunits \
udunits2 \
bzr \
boost
