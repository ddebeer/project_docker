#!/bin/bash
#SBATCH --partition=donphan
#SBATCH --mem=8G
#SBATCH --time=00:30:00
#SBATCH --mail-user=debeer.dries@gmail.com
#SBATCH --ntasks=1


module purge

export APPTAINER_CACHEDIR=$VSC_SCRATCH

cd $VSC_DATA
echo Start Job
apptainer pull server_v0.sif docker://ddebeer/server:v01
echo halfway
apptainer pull train_v0.sif docker://ddebeer/train:v01
echo end Job
