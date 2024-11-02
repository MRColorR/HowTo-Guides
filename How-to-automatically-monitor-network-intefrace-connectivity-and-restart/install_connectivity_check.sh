#!/bin/bash

# Script to install check_connectivity_and_restart_interface.sh
# Author: MRColoR
# Purpose: Copy the connectivity check script to the install path and add it to the user's crontab.

# Variables
SCRIPT_NAME="check_connectivity_and_restart_interface.sh"  # Name of the script to install
INSTALL_PATH="/usr/local/bin/$SCRIPT_NAME"                # Installation path
CRON_JOB="*/5 * * * * /usr/bin/sudo -H $INSTALL_PATH >> /dev/null 2>&1"   # Cron job entry

# Copy the script to the install path
cp "./$SCRIPT_NAME" "$INSTALL_PATH" || { echo "Failed to copy script"; exit 1; }
chown root:root "$INSTALL_PATH"
chmod a+x "$INSTALL_PATH"

# Add to user's crontab for periodic execution (e.g., every 5 minutes)
(crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab - || { echo "Failed to add cron job"; exit 1; }

echo "Installation complete! The script will run every 5 minutes."
