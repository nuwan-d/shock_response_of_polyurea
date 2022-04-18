#!/bin/bash
#SBATCH --account=YOUR ACCOUNT NAME
#SBATCH --nodes=15                 # Number of nodes
#SBATCH --ntasks-per-node=32      # Number of MPI process
#SBATCH --mem=0                # memory per node
#SBATCH --time=0-11:55            # time (DD-HH:MM)
#SBATCH --output=vasp_out_%j.txt
#SBATCH --mail-user=YOUR EMAIL
#SBATCH --mail-type=ALL
#SBATCH --job-name=h_0.9T_450

#module load nixpkgs/16.09  intel/2019.3  intelmpi/2019.3.199 vasp/5.4.4

module load nixpkgs/16.09  intel/2019.3  intelmpi/2019.3.199 vasp/6.1.0

cd $SLURM_SUBMIT_DIR

srun vasp_std

