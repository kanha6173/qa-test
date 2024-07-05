#!/bin/bash

# Thresholds
CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80
PROCESS_THRESHOLD=100

# Function to check CPU usage
check_cpu_usage() {
    local cpu_usage
    #cpu_usage=$(top -bn1 | awk '/Cpu\(s\)/ {print 100 - $8}')
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/., \([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    if (( ${cpu_usage%.*} > CPU_THRESHOLD )); then
        echo "ALERT: High CPU usage detected: $cpu_usage%"
    fi
}

# Function to check memory usage
check_memory_usage() {
    local memory_usage
    memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    if (( ${memory_usage%.*} > MEMORY_THRESHOLD )); then
        echo "ALERT: High Memory usage detected: $memory_usage%"
    fi
}

# Function to check disk usage
check_disk_usage() {
    local disk_usage
    disk_usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')
    if (( disk_usage > DISK_THRESHOLD )); then
        echo "ALERT: High Disk usage detected: $disk_usage%"
    fi
}

# Function to check running processes
check_running_processes() {
    local process_count
    process_count=$(ps -ef | wc -l)
    if (( process_count > PROCESS_THRESHOLD )); then
        echo "ALERT: High number of running processes detected: $process_count"
    fi
}

# Main function
main() {
    echo "System Health Monitoring Started"
    while true; do
        check_cpu_usage
        check_memory_usage
        check_disk_usage
        check_running_processes
        sleep 6
    done
}

main
