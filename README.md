# clone repo on usi cluster:

- for info about cluster see [documentation](https://intranet.ics.usi.ch/HPC)
- especially, focus on section `Slurm partitions`, here we are interested in `slim`

- log in to server (my username is pospisil):
```
ssh pospisil@hpc.ics.usi.ch
```
- list the available modules (to see what can be loaded - compilers, MATLABs, etc..)
```
module avail
```
- see the status of server
```
sinfo
```
- see who is computing what
```
squeue
```

- load git module (because default is not working)
```
module load git/2.13.0-gcc-7.1.0
```
- clone repo with sample code
```
git clone https://github.com/lukaspospisil/matlab_on_server_test.git
```

# run test on usi cluster in interactive session:

- run interactive session on `1 node, 1 process, 20 cores (all), slim partition, for 30 minutes, all available memory`
```
salloc -N 1 -n 1 --mincpus 20 --partition=slim --time 0:30:00 --mem=64040 --exclusive
```

- load MATLAB module
```
module load matlab
```
- check loaded modules
```
module list
```

- test running the application from interactive session
```
cd ~/matlab_on_server_test
matlab -nodesktop -r "myparameter=10;runme;exit"
```
- check if testing output file has been created
```
cat myoutput.txt
```
- close interactive session
```
exit
```

# run test as slurm job:

- see batch script with the definition of the job (`%j` in file denotes the unique job id)
```
cat myexample.batch
```
- send batchscript to slurm
```
sbatch myexample.batch
```
- see if we are in queue
```
squeue
```
(but maybe now there will be nothing since the "problem" is already computed)
- maybe we made a mistake and we want to "kill" the process
```
scancel [job_id]
```




