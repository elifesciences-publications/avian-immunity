#!/bin/bash

#SBATCH -p general
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -A edwards_lab
#SBATCH --mem 500
#SBATCH -t 7-00:00
#SBATCH -o ./logs/paml_%A_%a.out
#SBATCH -e ./logs/paml_%A_%a.err
#SBATCH --constraint holyib

HOGLIST=($(cat $1))
HOGRUN=${HOGLIST[$SLURM_ARRAY_TASK_ID]}
./run_paml_sites.sh $HOGRUN
