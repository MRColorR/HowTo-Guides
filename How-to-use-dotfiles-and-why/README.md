# How to Use Dotfiles and Why to Use Them 📝

This guide will walk you through the process of setting up and using dotfiles to manage your development environment. Dotfiles are especially useful for developers who want to maintain a consistent setup across multiple machines.

[![Click on image to see full video](https://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg "Watch the complete video tutorial")](www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE)

[Watch the complete video tutorial](www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE)

## Steps Covered in the Video 🎥 

1. Introduction to Dotfiles
    - What are dotfiles and why you should use them.
    - [Dotfiles GitHub page](https://dotfiles.github.io/)

2. Setting Up Your Dotfiles Repository
    - How to create and organize your dotfiles repository.
    - [Dotfiles GitHub docs for codespaces](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles)

3. Creating Setup Scripts in dotfile repository
    - Writing scripts to automate the installation of packages and configuration.
    - Example setup script
4. Using Dotfiles Across Multiple Machines
    - How to clone and use your dotfiles repository on different machines.

## Summary 📋
- Dotfiles help maintain a consistent development environment.
- Setting up a dotfiles repository and using setup scripts can save time and effort.
- You can easily use your dotfiles across multiple machines by cloning your repository.

## Scripts 🛠️

### Setup Script for installing a specific Python 3 release and its Virtual Environment
In this example we'll add to the dotfiles repository inside the script/setup folder a bash script to install python 3.9 ans its venv:
```bash
#!/bin/bash

# Update package list
sudo apt update

# Install Python 3.9 and venv
sudo apt install -y python3.9 python3.9-venv

# Create a virtual environment for Python 3.9
python3.9 -m venv ~/python39_venv

echo "Python 3.9 and virtual environment setup complete!"

```

## Resources 📂
- [Dotfiles GitHub page](https://dotfiles.github.io/)
- [Dotfiles GitHub docs for codespaces](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles)


# Credits and Contributions 🤝
If you found this guide helpful, feel free to leave a star ⭐ on the repository! Contributions are welcome. Please check the Contributing section in the root of this repository.
