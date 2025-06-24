import sys
import os
import numpy as np
from facemap import process

video_path = sys.argv[1]
video = [[video_path]]
base_path, _ = os.path.splitext(video_path)

# Load proc from same folder as the video
proc_path = base_path + "_proc.npy"
proc = np.load(proc_path, allow_pickle=True).item()

# Derive mouse ID folder name (e.g., ss0120)
mouse_id = os.path.basename(os.path.dirname(video_path))

# Set savepath to output folder
savepath = f"/vast/palmer/scratch/cardin/ts893/face/output/{mouse_id}"

# Create the output directory if it doesn't exist
os.makedirs(savepath, exist_ok=True)

print(f"Processing: {video_path}")
process.run(video, proc=proc, savepath=savepath)
print(f"Done: {video_path}")

