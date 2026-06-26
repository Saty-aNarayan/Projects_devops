#!/bin/bash
top 
#will show the current processes running on the server
echo "Server status: Running"
echo "------------------------------------------------------------"
free | grep Mem | awk '{print $3/$2 * 100.0}'
free | grep Mem | awk '{print $4/$2 * 100.0}'
#will show the percentage of memory used and free
echo "Free memory on the server"
echo "------------------------------------------------------------"
df -h
echo "Disk usage on the server"
echo "------------------------------------------------------------"
ps aux --sort=-%cpu | head -n 6
ps aux --sort=-%mem | head -n 6
echo "Top 5 processes by CPU and Memory usage"
echo "------------------------------------------------------------"
echo "Completed"
