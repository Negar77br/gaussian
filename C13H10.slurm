#!/bin/bash
#SBATCH --job-name=c13h10n07d          # create a short name for your job
#SBATCH --nodes=1                      # node count
#SBATCH --ntasks=8                     # total number of tasks across all nodes
#SBATCH --cpus-per-task=1              # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem=40G                      # total memory per node (4G per cpu-core is default)
#SBATCH --time=18:00:00                # total run time limit (HH:MM:SS)
#SBATCH --mail-type=begin              # send email when job begins
#SBATCH --mail-type=end                # send email when job ends
#SBATCH --mail-user=nb6082@princeton.edu  

module purge
module load gaussian/g16

g16 flu_N07D.com c13h10_n07d.out
