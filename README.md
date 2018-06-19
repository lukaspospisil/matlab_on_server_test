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
- load git module (because default is not working)
```
module load git/2.13.0-gcc-7.1.0
```
- clone repo with sample code
```
git clone https://github.com/lukaspospisil/matlab_on_server_test.git
```

# run test on usi cluster:

- run interactive session on `1 node, 20 cores (all), slim partition`
```
srun -N 1 -n 20 –partition=slim
```

- load MATLAB module
```
module load matlab/R2016a
```


