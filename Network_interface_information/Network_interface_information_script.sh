#!/bin/bash
# Prints the heading for the network interface information section
echo "=== Network Interface Information ==="

# Retrieves and displays the list of network interfaces
echo "Network Interfaces:"
ifconfig -a | grep -E '^[a-zA-Z0-9]' | awk '{print $1}'

# Prompts the user to enter the name of a network interface
read -p "Enter the network interface name: " interface_name

# Retrieves and displays the IP address and netmask of the specified network interface
ip_address=$(ifconfig "$interface_name" | awk '/inet / {print $2}')
netmask=$(ifconfig "$interface_name" | awk '/netmask / {print $4}')
echo "IP Address: $ip_address"
echo "Netmask: $netmask"