# CellRank Jupyter Notebook Instructions
Dockerfile for Cell Rank Jupyter notebooks - includes scanpy, velocyto, scvelo and CellRank

## Instructions.
1. Edit resources flag for `qsub.sge` to ensure you have sufficient resources for your analysis.
2. Submit `qsub.sge` to the queue. Once it is running on the compute node, a log file will appear in the same directory as this script. It will have the name `run_jupyter.o${JOB_ID}`.
3. If you want to continue working on a notebook that you have previously worked on, you will need to copy the Jupyter notebook file from the `jupyter_dir` directory in your home directory to the new directory created by the job (usually `${HOME}/jupyter_dir/${JOB_ID}`).
4. Use `cat` to view the contents of the log file - it will contain instructions on how to create the SSH tunnel and open the notebook on the HPC. 
5. Copy and paste the SSH tunneling options into your laptop's terminal.
6. Copy and paste the URL listed in the log into your browser.
7. When you're done, save your notebook and logout of the web page.
8. Paste the kill command from the log into your laptop's terminal.
9. Kill the job on Brenner (`qdel ${JOB_ID}`).