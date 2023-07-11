#!/bin/bash
# Display network information
echo "=== Network Information ==="

# Fetch the public IP address using the ifconfig.me service
echo "Public IP Address: $(curl -s ifconfig.me)"

# Retrieve the private IP address of the system by extracting the first field from the output of the 'hostname -I' command
echo "Private IP Address: $(hostname -I | awk '{print $1}')"

# Determine the default gateway IP address by searching for the line containing 'default' in the output of the 'ip route' command and extracting the third field
echo "Gateway IP Address: $(ip route | awk '/default/ {print $3}')"

# Print the DNS server IP addresses by extracting the second field from the lines in the '/etc/resolv.conf' file that contain the word 'nameserver'
echo "DNS Servers: $(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')"
