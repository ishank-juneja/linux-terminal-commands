# SSH and SCP Commands

SSH into a system in CSE Dept. sl2 systems
	
	- Where x in 1 - 100+
	- add -X flag to acess GUI functionality

`ssh -X ijuneja@sl2-x.cse.iitb.ac.in`

scp can be used to transfer files between PCs using the same ssh address

	- Notice the `:` at the end indicating top of file system associated with SSH ID

`scp /home/ishank/Desktop/CS747/PA2/submission.tar.gz ijuneja@sl2-80.cse.iitb.ac.in:`

When you have an scp config alias saved (here armada)

`scp models/CNN/model_ball_Feb05_12-46-00.pt armada:MM-LVSPC/models/CNN`

When you want to send a file from remote to local 

`scp armada:MM-LVSPC/models/CNN/model_conkers_Feb06_22-40-04.pt Desktop/MM-LVSPC/models/CNN/`

If trying to transfer a whole folder of something like photos, npy files etc.

1. Convert to tarball using [link](https://github.com/ishank-juneja/linux-terminal-commands/blob/master/tarball.md)
2. Then SCP thing
3. Advantages: Can mess around in the folder in local after starting a somewhat long scp, and even disregarding the compressions provided by zipping the folder (which is significant and upto 2 orders of magnitude at times) transferring a single object is a lot faster than sending a collection of objects.


