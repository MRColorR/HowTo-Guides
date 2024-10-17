# How to How to Install and configure NerdFonts on Windows, Linux, WSL, and macOS 🎨

This guide will walk you through the installation of NerdFonts, a collection of fonts that includes popular monospaced fonts patched with additional glyphs, ligatures, and icons. This is especially useful for developers and programmers looking to enhance their coding experience.

[Watch the complete video tutorial](www.youtube.com/watch?v=JNMvRv69pGE)
[![Click on image to see full video](https://img.youtube.com/vi/JNMvRv69pGE/0.jpg)](https://www.youtube.com/watch?v=JNMvRv69pGE)

## Steps Covered in the Video 🎥 

1. Download NerdFonts
    - Visit the [NerdFonts downloads page](https://www.nerdfonts.com/font-downloads).
    - Select the font package that suits your needs and download it or use a script to do so

2. Extract and Install NerdFonts on Your System
For all the installation methods see the [NerdFonts repo Readme](https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#font-installation)
    - For Windows:
        - Extract the fonts from the archive
        - Select all the fonts files that you want to install (you can install the entire font family)
        - Right click on the files to open the context menu, and select the install option
    - For Linux
        - Extract the fonts from the archive
        - Copy the extracted fonts in `~/.local/share/fonts`
        - run the font cache command `sudo fc-cache -fv`
    - For MacOS
        - Extract the fonts from the archive
        - Copy the extracted fonts in `~/Library/Fonts`
    - For Any OS with powershell installed:
        - Open a powershell and run the interactive installer: `& ([scriptblock]::Create((iwr 'https://raw.githubusercontent.com/jpawlowski/nerd-fonts-installer-PS/main/Invoke-NerdFontInstaller.ps1')))`
        - More info about this script on [this repository](https://github.com/jpawlowski/nerd-fonts-installer-PS)

3. Example: Configure NerdFonts in VS Code
    - Open Visual Studio Code.
    - Go to `File > Preferences > Settings`.
    - Search for "Font Family" settings and add your installed NerdFont like this "FontName NFM" (e.g., CaskaydiaCove NFM).
        - If you have multiple fonts families in VS Code, place your preferred one first. This way VS code will use it and leave the others as fallback fonts.

## Summary 📋
- NerdFonts enhance your coding experience with additional glyphs and icons, making your development environment more visually appealing and functional.
- The provided scripts simplify the installation process on all OS.

## Scripts 🛠️

### Simple Bash download script
- A simple Bash script is available in this folder alongside this README to download and install a NerdFont:
    - Copy the script on your machine or clone the repository
    - If the script is not executable, make it so with: `chmod +x download_and_install_nerdfonts.sh`
    - Run the script: `./download_and_install_nerdfonts.sh`
### Powershell interactive installer
- For Windows or any OS with PowerShell installed, you can use the previously mentioned interactive installer. 

## Resources 📂
- [NerdFonts website](www.nerdfonts.com/)
- [NerdFonts Repository](github.com/ryanoasis/nerd-fonts)
- [Pwsh interactive NF installer repository](https://github.com/jpawlowski/nerd-fonts-installer-PS)

# Credits and Contributions 🤝
If you found this guide helpful, feel free to leave a star ⭐ on the repository! Contributions are welcome. Please check the Contributing section in the root of this repository.