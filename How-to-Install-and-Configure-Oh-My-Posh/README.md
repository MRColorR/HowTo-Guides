# How to Install and Configure Oh My Posh 💻

This guide will walk you through installing and configuring Oh My Posh, a prompt engine for various shells that enhances the look and functionality of your terminal.
Benefits of Oh My Posh:
- Improves readability with additional information.
- Highly customizable with a wide range of themes.
- Supports popular shells like PowerShell, Bash, and ZSH.

[Watch the complete video tutorial](www.youtube.com/watch?v=2hnyshf7G6o)
[![Click on image to see full video](https://img.youtube.com/vi/2hnyshf7G6o/0.jpg)](https://www.youtube.com/watch?v=2hnyshf7G6o)

## Steps Covered in the Video 🎥 

1. Installation:
For all the installation methods see the [Oh My Posh Docs](https://ohmyposh.dev/docs/)
    - For Windows:
        - We recommend using WinGet, a package manager readily available on recent Windows releases.
        - Open a Powershell terminal
        - Copy and run the following command to install Oh My Posh: `winget install JanDeDobbeleer.OhMyPosh -s winget`
        - Right click on the files to open the context menu, and select the install option
    - For Linux
        - Open a terminal
        - Copy and run the following command to install Oh My Posh: `curl -s https://ohmyposh.dev/install.sh | bash -s`
    - For MacOS/Linux
        - Use Homebrew to install Oh My Posh with the following command: `brew install jandedobbeleer/oh-my-posh/oh-my-posh`

2. Configuration:
    - Font Installation:
        - It's recommended to install a font that supports glyphs for a complete experience. 
        - Nerd Fonts are a popular option. You can follow the guide in this repository to install Nerd Fonts.
    - Shell Profile Configuration:
        - Open your shell's profile file (e.g., `.bashrc` for Bash on Linux/WSL or `.profile` for Windows PowerShell).
        - If the profile doesn't exist, you can create a new one.
        - Add the following line to your shell profile to initialize Oh My Posh:
            - For Bash: `eval "$(oh-my-posh init bash)"`
            - For PowerShell: `oh-my-posh init pwsh | Invoke-Expression`
            - For Zsh: `if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then eval "$(oh-my-posh init zsh)"; fi`
            - For any other shell refer to the [Oh My Posh prompt docs](https://ohmyposh.dev/docs/installation/prompt)
        - Save the file and reload your shell for the changes to take effect.

3. Change template (Optional):
    - You can explore and select a theme from the many available Oh My Posh themes.
    - Themes can display additional information like battery status, Git branch, and more.
    - To use a specific theme, add the following line to your profile, replacing <theme-name> with your desired theme: 
        - For Bash change the line to: `eval "$(oh-my-posh init bash --config ~/<theme-name>.omp.json)"`
        - For PowerShell change the line to: `oh-my-posh init pwsh --config ~/<theme-name>.omp.json | Invoke-Expression`
        - For Zsh change the line to: `eval "$(oh-my-posh init zsh --config ~/<theme-name>.omp.json)"`
        - For any other shell refer to the [Oh My Posh customization docs](https://ohmyposh.dev/docs/installation/customize)

4. Customize by Adding Segments (Optional):
    - Oh My Posh themes are built from segments, which are reusable components displaying specific information.
    - You can find a list of available segments on the Oh My Posh website.
    - To add a segment to your theme, copy the corresponding JSON code and paste it into the desired location in your theme's JSON file.


## Summary 📋
- This guide provided a basic overview of installing and configuring Oh My Posh. Remember, Oh My Posh offers extensive customization options. Explore the Oh My Posh website to learn more about themes, segments, and advanced configuration.

## Resources 📂
- [Oh My Posh website](https://ohmyposh.dev/)
- [Oh My Posh repository](https://github.com/jandedobbeleer/oh-my-posh)

# Credits and Contributions 🤝
If you found this guide helpful, feel free to leave a star ⭐ on the repository! Contributions are welcome. Please check the Contributing section in the root of this repository.

---

Instructions for Use this guide template:
- Copy this template in a new readme.md file for the guide. - Remove these instructions and any unnecessary part (e.g., if the guide do not provide scripts, remove the scripts part)
- Replace the placeholders (e.g., [Title of Your Guide], [Description of Step 1]) with relevant information for each guide.
- Ensure that each part or any provided script are correctly formatted and tested.