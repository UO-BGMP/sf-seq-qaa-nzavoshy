#!/usr/bin/bash

#!/bin/bash
#SBATCH --partition=long        ### Partition (like a queue in PBS)
#SBATCH --job-name=qscore      ### Job Name
#SBATCH --output=qscore.out         ### File in which to store job output
#SBATCH --error=qscore.err          ### File in which to store job error messages
#SBATCH --time=0-12:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Node count required for the job
#SBATCH --ntasks-per-node=28     ### Number of tasks to be launched per Node
#SBATCH --mail-user=nzavoshy@uoregon.edu
#SBATCH --mail-type=ALL

#python3 qscore_script.py -f1 29_4E_fox_S21_L008_R1_001.fastq -o 29_R1_count -o2 29_R1_bp &

#python3 qscore_script.py -f1 29_4E_fox_S21_L008_R2_001.fastq -o 29_R2_count -o2 29_R2_bp &

python3 qscore_script.py -f1 32_4G_both_S23_L008_R1_001.fastq -o 32_R1_count -o2 32_R1_bp

#python3 qscore_script.py -f1 32_4G_both_S23_L008_R2_001.fastq -o 32_R2_count -o2 32_R2_bp




