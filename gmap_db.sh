#!/usr/bin/bash

#!/bin/bash
#SBATCH --partition=short        ### Partition (like a queue in PBS)
#SBATCH --job-name=gmapdb     ### Job Name
#SBATCH --output=gmapdb.out         ### File in which to store job output
#SBATCH --error=gmpadb.err          ### File in which to store job error messages
#SBATCH --time=0-2:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Node count required for the job
#SBATCH --ntasks-per-node=28     ### Number of tasks to be launched per Node

gmap_build -D /home/nzavoshy/BI624 -d mus_musc mus_musc.fa

