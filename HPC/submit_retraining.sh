#!/bin/bash
num_GPUs=2
stamp=$(date +%Y%m%d_%H%M%S) # time stamp for a directory to catch all logs.
sbatch --job-name=$stamp.run --output=/home/b.weinstein/logs/$stamp.out --error=/home/b.weinstein/logs/$stamp.err --gres=gpu:tesla:$num_GPUs --export=stamp=/home/b.weinstein/logs/$stamp,num_GPUs=$num_GPUs /home/b.weinstein/DeepLidar/HPC/retraining.sbatch
