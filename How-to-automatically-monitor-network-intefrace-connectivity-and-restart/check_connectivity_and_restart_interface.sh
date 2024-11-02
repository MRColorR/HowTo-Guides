#!/bin/bash

##################################################################
# Linux Connectivity Check Script
# Author: MRColoR
#
# Purpose:
# This script checks if the device has internet connectivity 
# (by default it checks connectivity to default gateway) and attempts to reconnect if it's down.
# It uses a lockfile to prevent multiple instances, tries to use an OS compatible network command, and logs actions for review.
#
# Usage:
# Customize variables in the "Configuration" section as needed.
# To run regularly, add to cron: 
# */5 * * * * /path/to/connectivity_check.sh
##################################################################

# Configuration
LOCKFILE='/var/run/connectivity_check.pid'  # Path to lockfile
INTERFACE='wlan0'                           # Network interface to check
TARGET_HOST=''                              # Optional override for ping target
LOGFILE='/var/log/connectivity_check.log'   # Log file path
PING_COUNT=4                                # Number of ping attempts
SUDO=""                                     # Will store 'sudo' if needed

# Attempt to get the default gateway IP for fallback
if command -v ip >/dev/null 2>&1; then
    DEFAULT_TARGET_HOST=$(ip route | grep default | awk '{print $3}')
else
    DEFAULT_TARGET_HOST='192.168.0.1'
fi
# Set the final ping target based on whether TARGET_HOST was provided
FINAL_TARGET=${TARGET_HOST:-$DEFAULT_TARGET_HOST}

# Functions
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | $SUDO tee -a "$LOGFILE"
}

check_sudo() {
    # Determine if 'sudo' is required and set SUDO variable accordingly
    if [ "$(id -u)" -ne 0 ]; then
        SUDO="sudo"
        log_message "Non-root user detected. Using 'sudo' for necessary commands."
    else
        SUDO=""
        log_message "Running as root. 'sudo' is not required."
    fi
}

check_connectivity() {
    # Check connectivity to FINAL_TARGET
    if [ -z "$FINAL_TARGET" ]; then
        log_message "No valid target host found for connectivity check."
        return 1
    fi

    log_message "Checking connectivity to $FINAL_TARGET..."
    
    if ping -c "$PING_COUNT" "$FINAL_TARGET" > /dev/null 2>&1; then
        log_message "Ping to $FINAL_TARGET successful."
        return 0
    else
        log_message "Ping to $FINAL_TARGET failed."
        return 1
    fi
}

network_restart() {
    # Sequentially attempt different restart methods based on OS and availability
    log_message "Attempting to restart network interface $INTERFACE"
    
    # Try DHCP reconfiguration first
    if command -v dhcpcd >/dev/null 2>&1; then
        log_message "Reconfiguring DHCP client for $INTERFACE..."
        if $SUDO /sbin/dhcpcd -n "$INTERFACE"; then
            log_message "DHCP client reconfigured successfully."
            return 0
        else
            log_message "dhcpcd command failed."
        fi
    else
        log_message "dhcpcd command not found, skipping..."
    fi

    # Check if ifconfig is available
    if command -v ifconfig >/dev/null 2>&1; then
        log_message "Using ifconfig to restart interface..."
        if $SUDO ifconfig "$INTERFACE" down; then
            sleep 5
            if $SUDO ifconfig "$INTERFACE" up; then
                log_message "Network restarted successfully using ifconfig."
                return 0
            else
                log_message "ifconfig up command failed."
            fi
        else
            log_message "ifconfig down command failed."
        fi
    else
        log_message "ifconfig command not found, skipping..."
    fi

    # Check if ifdown and ifup are available
    if command -v ifdown >/dev/null 2>&1 && command -v ifup >/dev/null 2>&1; then
        log_message "Bringing interface down..."
        if $SUDO /sbin/ifdown "$INTERFACE"; then
            sleep 5
            log_message "Bringing interface up..."
            if $SUDO /sbin/ifup --force "$INTERFACE"; then
                log_message "Network restarted successfully using ifdown/ifup."
                return 0
            else
                log_message "ifup command failed."
            fi
        else
            log_message "ifdown command failed."
        fi
    else
        log_message "ifdown or ifup command not found, skipping..."
    fi

    # Check if ip command is available
    if command -v ip >/dev/null 2>&1; then
        log_message "Using ip command to restart interface..."
        if $SUDO ip link set "$INTERFACE" down; then
            sleep 5
            if $SUDO ip link set "$INTERFACE" up; then
                log_message "Network restarted successfully using ip link."
                return 0
            else
                log_message "ip link up command failed."
            fi
        else
            log_message "ip link down command failed."
        fi
    else
        log_message "ip command not found, skipping..."
    fi

    log_message "All network restart methods failed."
    return 1  # Indicate failure if all methods fail
}

# Main Script Execution
log_message "Starting connectivity check script."

# Run sudo check function to determine if sudo is needed
check_sudo

# Check for an active lockfile and process validity
if [ -f "$LOCKFILE" ]; then
    pid=$($SUDO cat "$LOCKFILE")
    if kill -0 "$pid" 2>/dev/null; then
        log_message "Script already running with PID $pid. Exiting."
        exit 1
    else
        log_message "Stale lockfile found. Removing it."
        $SUDO rm -f "$LOCKFILE"
    fi
fi

# Create lockfile with current PID
echo $$ | $SUDO tee "$LOCKFILE" > /dev/null

# Perform connectivity check
if ! check_connectivity; then
    log_message "Initial connectivity check failed. Attempting to restart network."
    network_restart
    
    # Check connectivity again after attempting to restart
    if check_connectivity; then
        log_message "Connectivity restored after network restart."
    else
        log_message "Connectivity still down after restart attempt."
    fi
else
    log_message "Connectivity is confirmed. No action needed."
fi

# Cleanup lockfile if script completed successfully
$SUDO rm -f "$LOCKFILE"
log_message "Connectivity check completed."

exit 0
##################################################################
# End of Script
##################################################################
