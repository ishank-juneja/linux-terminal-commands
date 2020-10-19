# Linux inbuilt commands

cmd to make .sh bash script executable
Note the lowercase `x` in `+x` 

`chmod +x file_name.sh`

cmd to download files of a certain type from a website by traversing all links recurrsively

`wget -A mp4 -m -p -E -k -K -np https://www.ee.iitb.ac.in/~debasattam/ee636.html`

`wget -A pdf ppt pptx -m -p -E -k -K -np https://www.cse.iitb.ac.in/~ranade/cs213/`

cmd to count the total number of files in a directory

`ls -l . | egrep -c '^-'`