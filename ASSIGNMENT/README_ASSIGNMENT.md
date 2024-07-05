##                                         Application Health Checker (bash script)
--------------------------------------------------------------------------------------------------------------------------
#  Overview
   This bash script checks the uptime of an application by evaluating its HTTP status codes. It determines whether the application is functioning correctly ("Up") or unavailable/not responding ("Down").

## Features
1. Uses curl to fetch the HTTP status code from the specified URL.
2. Checks if the retrieved status code falls within accepted ranges (200-206, 300-308), indicating the application is "Up".
3. Prints "The application is Down" if the status code is outside the accepted ranges or if there is an error in retrieving the status code.
##Usage
1. Installation
     Download or clone the check_app_status.sh script from the repository.
##  Running the Script
1. Open a terminal.
2. Navigate to the directory where assignment4.sh is located.
3. chmod +x assignment4.sh
4. ./assignment4.sh
## Output
-   The script outputs either "The application is Up" or "The application is Down" based on the retrieved HTTP status code.
##  Error Handling
-   The script handles errors, such as network issues or unreachable servers, by checking for valid HTTP status codes.
##  Customization
-   Adjust the script as needed for specific HTTP status codes or additional error handling based on your application's behavior.



##                                                 System Health Monitoring Script
----------------------------------------------------------------------------------------------------------------------------------------
#  Overview
    This bash script monitors the health of a Linux system by checking CPU usage, memory usage, disk space, and running processes. If any of these metrics exceed predefined thresholds, such as CPU usage greater than 80%, the script sends an alert to the console.
#  Features
- Checks CPU usage, memory usage, disk space, and running processes.
- Sends alerts to the console if any metric exceeds predefined thresholds.
# Running the Script
1. Open a terminal.
2. Navigate to the directory where system_health_monitor.sh is located.
3. chmod +x assignment1.sh
4. ./assignment1.sh

##  Parameters
1. Thresholds: Adjust the following thresholds in the script (system_health_monitor.sh) based on your system requirements:
2. CPU_THRESHOLD: Threshold for CPU usage (default: 80%).
3. MEMORY_THRESHOLD: Threshold for memory usage (default: 80%).
4. DISK_THRESHOLD: Threshold for disk usage (default: 80%).
5. PROCESS_THRESHOLD: Threshold for the maximum number of running processes (default: 100).

## Output
- The script outputs alerts to the console if any of the following conditions are met:
1. CPU usage exceeds CPU_THRESHOLD.
2. Memory usage exceeds MEMORY_THRESHOLD.
3. Disk usage exceeds DISK_THRESHOLD.

## Customization
- Customize the script to add more metrics or adjust existing thresholds (CPU_THRESHOLD, MEMORY_THRESHOLD, DISK_THRESHOLD, PROCESS_THRESHOLD) based on specific system requirements.
