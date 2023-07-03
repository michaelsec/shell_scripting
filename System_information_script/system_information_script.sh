#!/bin/bash
# Prints the heading for the system information section
echo "=== System Information ==="

# Retrieves and displays the hostname of the machine.
echo "Hostname: $(hostname)"

# Retrieves and displays the version of the Linux kernel.
echo "Kernel Version: $(uname -r)"

# Uses the top command to retrieve CPU usage information, including the load average, and formats it as a percentage.
echo "CPU Usage: $(top -bn1 | grep load | awk '{printf "%.2f%%\n", $(NF-2)}')"

# Retrieves memory usage information using the free command, filters it to obtain the relevant line, and formats it as used memory in megabytes and as a percentage of the total memory.
echo "Memory Usage: $(free -m | awk '/Mem:/ {printf "%s/%sMB (%.2f%%)\n", $3, $2, $3*100/$2 }')"

# Uses the df command to retrieve disk usage information for the root filesystem, filters it to obtain the relevant line, and formats it as used space, total space, and percentage used.
echo "Disk Usage: $(df -h / | awk '/\// {print $3"/"$2" ("$5")"}')"