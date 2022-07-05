#!/bin/bash
#
#SBATCH -N 1  # number of nodes
#SBATCH -n 24 # number of cores
#SBATCH -D /infinity_home/fs269899/primer356deep_disk
module add sextractor/2.19.5-gnu
module add openmpi/1.10.2-gnu4.9 
export LD_LIBRARY_PATH=/infinity_home/fs269899/cpl-7.1.4/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/infinity_home/fs269899/wcslib-7.6/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/infinity_home/fs269899/cfitsio-4.1.0/lib:$LD_LIBRARY_PATH
mpirun -np 24 ../galapagos-c-master/src/GALAPAGOS "/infinity_home/fs269899/primer356deep_disk/setup/gala.setup"
