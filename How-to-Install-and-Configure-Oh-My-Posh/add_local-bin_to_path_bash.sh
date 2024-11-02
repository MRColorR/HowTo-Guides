#!/bin/bash

# Check if ~/.local/bin is in the PATH
if ! echo $PATH | grep -q "$HOME/.local/bin"; then
  # Ensure write permissions to ~/.bashrc
  if ! [[ -w ~/.bashrc ]]; then
    echo "Error: Cannot write to ~/.bashrc. Please check permissions."
    exit 1
  fi

  # Add ~/.local/bin to the PATH, making it persistent across reboots
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
  source ~/.bashrc

  echo "$HOME/.local/bin added to PATH."
else
  echo "$HOME/.local/bin is already in PATH. Skipping."
fi