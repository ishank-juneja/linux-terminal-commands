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
