#!/bin/ash
# Entrypoint script for the Arclight server

# Replace startup variables and execute the command
MODIFIED_STARTUP=$(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
eval ${MODIFIED_STARTUP}
