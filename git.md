Remove last git commit

`git reset --soft HEAD~1`

Change in credentials since GitHub has stopped supporting login passwords for command line usage (because the password method is to be depracated soon.) 

Step 1: Run the below command to remove any existing stored credentials (this can be either the original GitHub account credentials or an unknown personal access token that was generated earlier using GitHub's website.) 

Note: with new personal-token stuff, username remains the same but password is replaced by a personal token

`git config --global --system --unset credential.helper`

Step 2: After running the above the system will be purged of any prior credentials and we can now overwrite them by first running

`git config --global credential.helper store`

Step 3: Attempt a git push, your GitHub username and new password (personal access token) will need to be entered either after step 2 or 3 but thereafter it will be remembered in the system.

`git add -A && git commit -m "dummy commit" && git push`
  
Note: For some reason, we might need to unlink with remote and then link it back again while keeping the reference to the remote URL as an HTTPS:

`git remote -v`

`git remote remove origin`

`git remote add origin https://github.com/ishank-juneja/repo-name.git`

` git push --set-upstream origin master`

Might be needed-

`git branch --set-upstream-to=origin/master master`

Save GH password
	- Which needs to be followed by one final entry of GH credentials.
	- Maybe add --global flag to this

`git config credential.helper store`
	
To remove git tracking and all git history from a local repository

`rm -rf .git` 

To discard un staged changes 

`git checkout --`

To remove from staging

`git reset`

To create a git hub repo from existing git folder 

`git remote add github https://github.com/ishank-juneja/Digital-Design.git`

`git push -u github master`

To view files that have extension included in .gitignore but were already commited earlier

`git ls-files -ci --exclude-standard`

To remove files listed above from git but keep on disk

`git ls-files -ci --exclude-standard -z | xargs -0 git rm --cached`

> [Answer on SO](https://stackoverflow.com/questions/1274057/how-to-make-git-forget-about-a-file-that-was-tracked-but-is-now-in-gitignore)

.gitignore will prevent untracked files from being added (without an add -f) to the set of files tracked by git, however git will continue to track any files that are already being tracked.
To stop tracking a file you need to remove it from the index. This can be achieved with this command.
git rm --cached <file>
If you want to remove a whole folder, you need to remove all files in it recursively.
git rm -r --cached <folder>
The removal of the file from the head revision will happen on the next commit.

>WARNING: While this will not remove the physical file from your local, it will remove the files from other developers machines on next git pull

To get current branch and list of all branches
`git branch`

To remove association with remote repo origin

`git remote rm origin`

To sever ties with existing remote and establish them with a new remote. First, 

`git remote set-url origin new-url`

Then, pull from new remote with the allow different histories tag

`git pull --allow-unrelated-histories`

To override any excludes from .gitignore file, for instance track only exception.dll among all files with .dll extension
```
*.dll
?!exception.dll
```

To get complete information about all the branches on remote origin
	- What pushes where, what all is tracked etc...

`git remote show origin`

To prune local useless references

`git prune`

To do the above for refs originating from remote

`git remote prune <origin/remote dir name>`

To rename a branch both locally and on the remote see link

	- Note you CANNOT rename the default branch on GH
	- [Answer on SO](https://stackoverflow.com/questions/6591213/how-do-i-rename-a-local-git-branch)

To see all remote branches

`git branch -r`

To fetch a new remote branch into a new local branch of the same name 

`git checkout --track origin/<name at remote>`

To clone a certain branch of a remote git repo
`git clone --branch <branchname> <remote-repo-url>`
	
To create a new local git rep that tracks a remote repo on GH say

`git clone https://github.com/ishank-juneja/pipelined-RISC`

In a `.gitignore` file if we wish to exclude all files of type `.png` and `.jpg` except for those sitting inside a certain `media` folder
```
# Image files
*.svg
*png
*.jpg
*.JPG

# Not images inside the media folder
!media/*.png
!media/*.jpg
```
The sequence of commands in the above is important
	
To cleanup a git repository that has been bloated by accidentally commiting graphics, binaries, raw-data etc using `bfg` tool, first follow the instructions given on [this link](https://www.phase2technology.com/blog/removing-large-files-git-bfg). Once the re-indexed commits have been pushed the remote will now contain the same number of commits as before but these commits are "reindexed" meaning that they are no longer recognizable to any old local folder. Now to commit any changes that were made to local after the last commit to the old bloated remote please copy these files to the new local manually and then commit-push the changes.
	
Any untracked data present in the old local can be moved to the new local manually as well so that the old local can then be deleted.

