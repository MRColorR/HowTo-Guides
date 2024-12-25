# How to Monitor and Automatically Restore Network Connection on Linux 📝

This guide will walk you through setting up a script to **monitor and restore network connectivity automatically on Linux systems**. This tool is especially useful for **IoT devices, remote servers, and Raspberry Pi systems** where maintaining a stable connection is crucial. Whether you're dealing with flaky WiFi or remote devices, this script ensures your network stays online with minimal intervention.

[![Click on image to see full video](https://img.youtube.com/vi/b4W-xMXRnoM/0.jpg "Watch the complete video tutorial")](https://www.youtube.com/watch?v=b4W-xMXRnoM)

[Watch the complete video tutorial](https://www.youtube.com/watch?v=b4W-xMXRnoM)


## Steps Covered in the Video 🎥 

1. **Introduction to the Problem**
    - Importance of network connection monitoring for critical systems: Network connectivity is the backbone of modern technology. For critical systems—those that must remain operational and accessible at all times—an uninterrupted connection is vital. This applies to a wide range of use cases, from corporate infrastructures to personal projects. Monitoring network connections ensures:

        - Operational Continuity: Systems like servers, IoT devices, or home networks often run critical services such as databases, web applications, or monitoring tools. A lost connection can disrupt these services, potentially leading to data loss, downtime, or even financial repercussions.
        - Proactive Problem Resolution: Monitoring helps identify issues before they escalate. Detecting a recurring network issue early can save hours of troubleshooting later.
        - Minimized Downtime: Automated solutions that monitor and restore connectivity reduce the time systems spend offline, keeping critical functions running smoothly.
        - Remote Accessibility: For remote systems, manual intervention might not always be possible. Automated monitoring ensures these systems stay connected without requiring a physical visit.
    - Use cases: IoT devices, remote servers, Raspberry Pi, and home labs.
    - Challenges caused by unstable connections:
        - Service Interruptions
        - Data Loss and Corruption
        - Increased Maintenance Costs
        - Disrupted User Experience
        - Operational Risks in Critical Scenarios 

2. **How the Script Works**
    - Monitors network connectivity by pinging a specific IP or domain.
    - Automatically attempts to reconnect in case of failure:
        - Refreshes DHCP and DNS settings.
        - Restarts the network interface if needed.
        - Logs all activities for troubleshooting.

3. **Installation and Configuration**
    - Clone the repository:
      ```bash
      git clone https://github.com/MRColorR/HowTo-Guides.git
      ```
    - Navigate to the appropriate folder and make the script executable:
      ```bash
      chmod +x connectivity_check.sh
      ```
    - Customize the script variables to match your network setup (e.g., interface name, target IP/domain).

4. **Running the Script**
    - Run manually for testing:
      ```bash
      ./connectivity_check.sh
      ```
    - Set up a cron job for automated execution:
      ```bash
      crontab -e
      ```
      Add the following line for periodic checks (every 5 minutes):
      ```bash
      */5 * * * * /path/to/connectivity_check.sh
      ```

5. **Demo on remote Raspberry Pi**
    - A practical demonstration of installing and running the script on a Raspberry Pi.

6. **Automation with Installer Script**
    - Use the installer script to set up everything automatically:
      ```bash
      chmod +x install_connectivity_monitor.sh
      ./install_connectivity_monitor.sh
      ```

---

## Summary 📋
- This guide provides a comprehensive overview of automatically monitoring network interface connectivity, ensuring that your network remains stable and reliable. 
- This guide provides a customizable script to monitor and automatically restore network connections.
- Perfect for Linux-based systems, including Raspberry Pi, where stable connectivity is essential.
- Logs all activities for easy debugging and supports various network interfaces.


## Scripts 🛠️

### Connectivity Check Script
This script checks the connectivity of your network interface and restarts it if necessary.

### Installation helper script
This script help users install the script for automatic execution setting it up in a crontab.

## Resources 📂
- [Crontab guru](https://crontab.guru/)

# Credits and Contributions 🤝
If you found this guide helpful, feel free to leave a star ⭐ on the repository! Contributions are welcome. Please check the Contributing section in the root of this repository.
