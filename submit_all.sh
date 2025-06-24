#!/bin/bash

for vid in /vast/palmer/scratch/cardin/ts893/face/rawVideo/ss*/ss*.mp4; do
    base=$(basename "$vid" .mp4)              # e.g., ss0120_d240516_2024-05-16-144337-0000
    folder=$(basename "$(dirname "$vid")")    # e.g., ss0120

    sbatch --job-name=facemap_${base} \
           --output=/vast/palmer/scratch/cardin/ts893/face/logs/facemap_${base}.out \
           --error=/vast/palmer/scratch/cardin/ts893/face/logs/facemap_${base}.err \
           /vast/palmer/scratch/cardin/ts893/face/code/run_facemap.sh "$vid"
done
