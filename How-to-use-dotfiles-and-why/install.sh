#!/bin/bash

echo "Starting the dotfiles repository installation process..."

# Update package list
echo "Updating package list..."
sudo apt update

# Install Python 3.9 and venv
echo "Installing Python 3.9 and its venv..."
sudo apt install -y python3.9 python3.9-venv

echo "Python 3.9 and virtual environment setup complete!"
