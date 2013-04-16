#!/bin/bash

sudo pip install netCDF
sudo PETSC_DIR=~/petsc-3.3 PETSC_ARCH=ompi-opt  pip install petsc4py