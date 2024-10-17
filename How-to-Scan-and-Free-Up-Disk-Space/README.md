# How to Identify and Clean Large Files on Your System Using WinDirStat 🗂️

This guide will walk you through using WinDirStat, a free, open-source disk usage analyzer, to identify and clean large or unnecessary files on your system. This tool is available for Windows, Mac, and Linux.

Using WinDirStat, you can easily find old files, temporary files, or programs taking up significant space on your system and free up your storage efficiently.

[Watch the complete video tutorial](www.youtube.com/watch?v=HM26w6WhPtQ)
[![Click on image to see full video](https://img.youtube.com/vi/HM26w6WhPtQ/0.jpg)](https://www.youtube.com/watch?v=HM26w6WhPtQ)

## Steps Covered in the Video 🎥 

1. Download and Install WinDirStat
    - Visit the [WinDirStat website](https://windirstat.net/).
    - Click Download and install the executable for your operating system.
2. Using WinDirStat
    - Launch the program.
    - Select the disk or folder you want to analyze.
    - Let the scan complete. You'll see a tree structure of folders and files sorted by size, along with a color-coded, clickable block graph.
    - The block graph shows the disk space usage by file type and folder, making it easy to identify which files or folders are consuming the most space.
3. Analyze the Results
    - Identify large files or folders that you may want to remove or archive.
    - You can click on blocks in the graph to view details about specific files.
4. Disk Cleanup (Docker virtual disk example)
    - If you're using Docker, the video also covers how Docker can accumulate large disk usage over time, especially within the WSL (Windows Subsystem for Linux).
    - Use the following command to cleans up unused Docker images, containers, and volumes: `docker system prune --all --volumes` 
    - After cleaning Docker, the virtual disk used by docker may not automatically shrink. You can use Docker's advanced settings to resize the disk and free up space.

## Summary 📋
- WinDirStat offers a deep analysis of your system's storage usage, helping to locate files that Windows Disk Cleanup may miss.
- By using Docker’s prune command and advanced options for resizing the disk, you can keep your system and Docker environment clean and efficient.

## Resources 📂
- [WinDirStat website](https://windirstat.net/)
- [Docker pruning documentation](https://docs.docker.com/engine/manage-resources/pruning/)

# Credits and Contributions 🤝
If you found this guide helpful, feel free to leave a star ⭐ on the repository! Contributions are welcome. Please check the Contributing section in the root of this repository.