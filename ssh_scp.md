# SSH and SCP Commands

- SSH into a system in CSE Dept. sl2 systems 
`ssh -X ijuneja@sl2-x.cse.iitb.ac.in`
	- Where x in 1 - 100+
 	- add -X flag to acess GUI functionality

- scp can be used to transfer files between PCs using the same ssh address
`scp /home/ishank/Desktop/CS747/PA2/submission.tar.gz ijuneja@sl2-80.cse.iitb.ac.in:`
	- Notice the `:` at the end indicating top of file system associated with SSH ID


