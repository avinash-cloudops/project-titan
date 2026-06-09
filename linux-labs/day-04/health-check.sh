#!/bin/bash
echo "========================================="
echo "       SERVER HEALTH CHECK REPORT"
echo "========================================="
echo ""
echo "--- SYSTEM INFO ---"
echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo ""
echo "--- CPU & MEMORY ---"
free -h | grep Mem
echo ""
echo "--- DISK USAGE ---"
df -h | grep -v tmpfs
echo ""
echo "--- TOP 5 PROCESSES ---"
ps aux --sort=-%cpu | head -6
echo ""
echo "--- LOGGED IN USERS ---"
who
echo ""
echo "========================================="
echo "          HEALTH CHECK COMPLETE"
echo "========================================="
