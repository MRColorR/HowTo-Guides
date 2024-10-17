#!/bin/bash

# Function to check for necessary packages on Linux
check_linux_packages() {
    REQUIRED_PKG=("curl" "fontconfig" "unzip")
    for PKG in "${REQUIRED_PKG[@]}"; do
        if ! dpkg -s $PKG &> /dev/null; then
            echo "Package $PKG is not installed. Please install it using your package manager, for example:"
            echo "sudo apt install $PKG"
            exit 1
        fi
    done
}

# Function to check for necessary packages on macOS
check_macos_packages() {
    REQUIRED_PKG=("curl" "fontconfig" "unzip")
    for PKG in "${REQUIRED_PKG[@]}"; do
        if ! brew list $PKG &> /dev/null; then
            echo "Package $PKG is not installed. Please install it using Homebrew, for example:"
            echo "brew install $PKG"
            exit 1
        fi
    done
}

# Detect the operating system
OS="$(uname)"
echo "Detected operating system: $OS"
if [ "$OS" == "Linux" ]; then
    echo "Checking for necessary packages on Linux..."
    check_linux_packages
    FONT_DIR="$HOME/.local/share/fonts"
elif [ "$OS" == "Darwin" ]; then
    echo "Checking for necessary packages on macOS..."
    check_macos_packages
    FONT_DIR="$HOME/Library/Fonts"
else
    echo "Unsupported operating system: $OS"
    exit 1
fi

# Create the fonts directory (if it doesn't exist)
echo "Creating fonts directory at $FONT_DIR (if it doesn't already exist)..."
mkdir -p "$FONT_DIR"

# Ask the user for the font name or use default
read -p "Enter the NerdFont name (default: CascadiaCode): " FONT_NAME
FONT_NAME=${FONT_NAME:-CascadiaCode}
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/$FONT_NAME.zip"
echo "Downloading $FONT_NAME from $FONT_URL..."

# Download the font
curl -OL $FONT_URL

# Extract and install the font
echo "Extracting and installing $FONT_NAME to $FONT_DIR/$FONT_NAME..."
unzip -o "$FONT_NAME.zip" -d "$FONT_DIR/$FONT_NAME"

# Refresh the font cache
if [ "$OS" == "Linux" ]; then
    echo "Refreshing the font cache..."
    fc-cache -fv
fi

# Clean up the downloaded zip file
echo "Cleaning up the downloaded zip file..."
rm "$FONT_NAME.zip"

echo "$FONT_NAME Nerd Font has been successfully installed!"
