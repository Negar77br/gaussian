# gaussian
My attempt at making a semi comprehensive guide on running Gaussian calculations on MacOS.

This is a repository for all the files you need to run gaussian calculations on the Princeton Research Compting cluster (for more info visit: https://researchcomputing.princeton.edu/support/knowledge-base/gaussian).

After you have acquired permission to use the cluster (see the link above for receiving access), you can access the cluster using the MacOS terminal with the command: 

`ssh <YourNetID>@adroit.princeton.edu #you need VPN for off-campus access`

You will be then prompted to log in using your NetID password and DUO authentication. 

[complete notes on switiching from home to scratch folder to move files from the cluster to your local machine later]

The two main scripts you need in your job directory are a slurm script and a Gaussian input file. You can create these two files in the terminal using vim (you should have isntalled vim using homebrew but vi will also do for now). 

Things to note about these two files are: 
1. your input file needs to be a .com or .gjf
2. you need to leave a blank line or two after your Gaussian script in your input file
3. if you're running multiple calculations, you can create a checkpoint file which is done by adding this line to the beginning of your code:
`%Chk=name.chk`

There are many xyz coordinates for the creating of your Gaussian file available on (later on you may have to use a software such as Avogadro to create an xyz file): https://github.com/tmpchem/computational_chemistry/tree/master/geom/xyz
