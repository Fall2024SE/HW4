#!/bin/bash

# Find the process ID of the process to kill
pid=$(ps aux | grep "[b]ash infinite.sh" | awk '{print $2}')

if [ -n "$pid" ]; then
    # Terminate the process
    kill $pid
    echo "infinite.sh script terminated!"
else
    echo "No instance of infinite.sh running found"
fi