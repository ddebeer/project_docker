# How to use Apptainer on the HPC

## Step 1 connect to HPC

1. Open WinSCP and connect to the HPC

2. Open a Putty terminal to communicate with the HPC


## Step 2 create a batch file

1. Create a batch file .sh

    * start with `#!/bin/bash`

    * Specify job options via `#SBATCH --<job option>=<your choice>` [See documentation](https://docs.hpc.ugent.be/Windows/running_batch_jobs/#defining-and-submitting-your-job]

    * Change the working directory, for instance to `$VSC_DATA` to `$VSC_SCRATCH`

    * Use `module purge` to purge all loded modules

    * Set the chache directory for apptainer: `export APPTAINER_CACHEDIR=$VSC_SCRATCH`

2. Pull container images via `apptainer pull <name_version.sif>` <location>


## Step 3 Save/copy batch file to DATA folder

    * copy via WinSCP
    * upload via the hpc portal website
    * create directly using vi


## Step 4 submit batch file as a job

    * using `sbatch` <batch_file.sh>
    * check running processes with `squeue`




