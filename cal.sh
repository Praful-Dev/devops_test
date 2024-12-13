#!/bin/bash

# URL of the log file (could be from GitHub or S3 bucket)
LOG_FILE_URL="https://path/to/your/logfile.log"  # Replace with your log file URL

# Fetch the log file using curl and search for 'Error' using grep
curl -s "$LOG_FILE_URL" | grep -oP 'Error.*\bPID:\s*(\d+)' | awk '{print $NF}'
