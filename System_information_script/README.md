System Information Script
This shell script retrieves and displays various system information, including the hostname, kernel version, CPU usage, memory usage, and disk usage.

Usage:
To run the script, simply execute it in a Bash environment:


#!/bin/bash
./system_information.sh

Output:
The script will output the following system information:

Hostname: Displays the name of the machine.
Kernel Version: Shows the version of the Linux kernel.
CPU Usage: Presents the current CPU usage as a percentage.
Memory Usage: Indicates the memory usage in megabytes and as a percentage of the total memory.
Disk Usage: Displays the disk usage of the root filesystem in the format used/total (percentage).


Here is an example of the output you might see when running the script:

=== System Information ===
Hostname: my-computer
Kernel Version: 4.15.0-45-generic
CPU Usage: 12.34%
Memory Usage: 2048/8192MB (25.00%)
Disk Usage: 24GB/100GB (24%)