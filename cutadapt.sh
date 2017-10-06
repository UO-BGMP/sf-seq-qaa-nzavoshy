#!/usr/bin/bash

#!/bin/bash
#SBATCH --partition=gpu        ### Partition (like a queue in PBS)
#SBATCH --job-name=cutadapt      ### Job Name
#SBATCH --output=cutadapt.out         ### File in which to store job output
#SBATCH --error=cutadapt.err          ### File in which to store job error messages
#SBATCH --time=0-12:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Node count required for the job
#SBATCH --ntasks-per-node=28     ### Number of tasks to be launched per Node
#SBATCH --mail-user=nzavoshy@uoregon.edu
#SBATCH --mail-type=ALL

cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT -o 29_R1.trimmed.fastq -p 29_R2.trimmed.fastq /home/nzavoshy/BI624/29_4E_fox_S21_L008_R1_001.fastq /home/nzavoshy/BI624/29_4E_fox_S21_L008_R2_001.fastq
