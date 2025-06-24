#!/bin/sh
#SBATCH --ntasks=1 --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100G
#SBATCH --time=2:00:00
#SBATCH --partition="scavenge"
#SBATCH --requeue


module load miniconda
conda activate facemap

python /vast/palmer/scratch/cardin/ts893/face/code/facemap_SS.py "$1"

