#!/bin/bash
#SBATCH --account=YOUR ACCOUNT NAME
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --mem=8G
#SBATCH --time=00-23:50
#SBATCH --output=%J.log
#SBATCH --mail-user=YOUR EMAIL
#SBATCH --mail-type=ALL
#SBATCH --job-name=pu_h_eq

# Load the module:

module load nixpkgs/16.09  intel/2016.4  openmpi/2.1.1 lammps-omp/20181212

echo "Starting run at: `date`"

lmp_exec=lmp_icc_openmpi
lmp_input="pu_h_cube_in.in"
lmp_output="lammps_output.txt"

srun ${lmp_exec} < ${lmp_input} > ${lmp_output}

echo "Program finished with exit code $? at: `date`"

