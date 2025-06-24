# FacemapBatch
Run multiple Facemap analyses in parallel on the cluster

Stefan 2025/06/21

These codes allow you to run all your facial videos with Facemap on the cluster simultaneously. 

What you need to do:
1. Create an environment and install Facemap on your cluster.
2. On your local computer, open each video with Facemap GUI(python), select ROI for motionSVD, uncheck the GPU option, and then save ROIs to get the proc.npy file. 
3. Organize the codes and your raw data+proc.npy file as below. (Manually create the log folder too) (Might need to download the README file to see the structure)
4. Go to the code folder, run the command in the file 'commandForNewCode.txt'. Might need to do this every time after editing the code. 
5. Run! In the code folder, run: bash submit_all.sh


/vast/palmer/scratch/cardin/ts893/face/
│
├── code/
│   ├── facemap_SS.py
│   └── run_facemap.sh
│   └── submit_all.sh
│
├── rawVideo/
│   ├── ss0120/
│   │   ├── *.mp4
│   │   └── *_proc.npy
│   ├── ss0121/
│       ├── *.mp4
│       └── *_proc.npy
│
├── output/
│   ├── ss0120/
│   └── ss0121/
│
└── logs/
    ├── facemap_*.out
    └── facemap_*.err

