# gaussian
My attempt at making a semi comprehensive guide on running Gaussian calculations on MacOS.

This is a repository for all the files you need to run gaussian calculations on the Princeton Research Compting cluster (for more info visit: https://researchcomputing.princeton.edu/support/knowledge-base/gaussian).

After you have acquired permission to use the cluster (see the link above for receiving access), you can access the cluster using the MacOS terminal with the command: 

`ssh <YourNetID>@adroit.princeton.edu #you need VPN for off-campus access`

You will be then prompted to log in using your NetID password and DUO authentication. 

The two main scripts you need in your job directory are a slurm script and a Gaussian input file. You can create these two files in the terminal using vim (you should have isntalled vim using homebrew but vi will also do for now). 

Things to note about these two files are: 
1. your input file needs to be a .com or .gjf
2. you need to leave a blank line or two after your Gaussian script in your input file
3. if you're running multiple calculations, you can create a checkpoint file which is done by adding this line to the beginning of your code:
`%Chk=name.chk`

There are many xyz coordinates for the creating of your Gaussian file available on (later on you may have to use a software such as Avogadro to create an xyz file): https://github.com/tmpchem/computational_chemistry/tree/master/geom/xyz
I have personally used both avogadro and gaussview softwares for creating xyz coordinates, but prefer gaussview over the other. Avogadro is terrible at detecting symmetry of bigger molecules and if you don't start off with the right symmetry (for example if you don't have C2v symmetry for C60H2 and have C1 or Cs instead), the your gaussian calculations are going to be wrong because gaussian as a software is not going to recognize the right symmetry usually. Gaussview is very simple to use and doesn't crash as often as avogadro and you can access it by remote desktoping into the student labs computers through princeotn university. 

After you're done running your calc using the command `sbatch name.slurm`, you will see a file created called name.out which will be your output. If the calculations were ran successfuly you should see a "normal termination" somewhere in your code along with all the parameters (rotational constants, etc) that were calculated. 

To transfer this file to your local machine, make sure to log off the cluster first by simply running the command `exit` or ctrl+C (i think this should work as well but not sure), and then run this command:
`scp <YourNetID>@adroit.princeton.edu:/home/nb6082/name.out /Users/username/Desktop`

Please remember that "/home/nb6082" is where your file is saved on the cluster and it could be in a different folder for you (commonly the scratch/network folder), and the "username" is whatever username your local machine has. If this is not working for you, make sure to run a command such as `/Users/username/Desktop` to ensure that the directory exists on your local machine. It could also be that you don't have permissions to write on this directory which you can check with `ls -ld /Users/username/Desktop`. 

If you still have trouble getting your files off the cluster to your local machine I would suggest googling your problem or asking ChatGPT.
