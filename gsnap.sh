#!/usr/bin/bash

#!/bin/bash
#SBATCH --partition=gpu        ### Partition (like a queue in PBS)
#SBATCH --job-name=gsnap     ### Job Name
#SBATCH --output=gsnap_try.out         ### File in which to store job output
#SBATCH --error=gsnap_try.err          ### File in which to store job error messages
#SBATCH --time=0-23:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Node count required for the job
#SBATCH --ntasks-per-node=28     ### Number of tasks to be launched per Node

gsnap -d mus_musc -t 26 -A sam --split-output 32_trimmed -N 1 -D ~/BI624 32_R1.out.fastq 32_R2.out.fastq 

gsnap -d mus_musc -t 26 -A sam --split-output 29_trimmed -N 1 --allow-pe-name-mismatch -D ~/BI624 29_R1.out.fastq 29_R2.out.fastq 
