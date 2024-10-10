#!/bin/bash
ps aux | grep "[b]ash infinite.sh" | awk '{print $2}' | xargs kill