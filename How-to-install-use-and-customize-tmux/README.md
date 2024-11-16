# How to Install, Use and Customize Tmux: Complete Guide 📝

This guide is designed to introduce you to Tmux, a powerful terminal multiplexer, and to walk you through installation, basic usage, customization tips, and some useful tricks.

[![Click on image to see full video](https://img.youtube.com/vi/_DsRuPLdZQs/0.jpg "Watch the complete video tutorial")](https://www.youtube.com/watch?v=_DsRuPLdZQs)

[Watch the complete video tutorial](https://www.youtube.com/watch?v=_DsRuPLdZQs)

## Steps Covered in the Video 🎥 

1. Introduction to Tmux
    - Tmux is a terminal multiplexer that allows you to manage multiple terminal sessions within a single window. It’s particularly useful for maintaining sessions, running tasks in the background, and organizing workflows.
    - [Tmux repository](https://github.com/tmux/tmux)

2. Installing Tmux
    - Linux: For most distributions, Tmux can be installed via package managers:
        - Debian/Ubuntu: `sudo apt install tmux`
        - Fedora: `sudo dnf install tmux`
        - Arch Linux: `sudo pacman -S tmux`
    - MacOS: Tmux can be installed via package managers:
        - Homebrew: `brew install tmux`
    - Windows: you can install Tmux through WSL (Windows Subsystem for Linux). 
        - First, install WSL and set up a Linux distribution, then follow the Linux installation steps.

3. How to use Tmux
    - Starting a New Tmux Session:
        - To start a new Tmux session, use: `tmux new -s <session-name>`
        - Replace <session-name> with a name of your choice, such as dev-session.
    - Detaching and Reattaching:
        - Detach from a session without closing it: `Ctrl + b, then d`
        - Reattach to a session: `tmux attach -t <session-name>`
    - Other Tmux Common Commands:
        - Create a new window: `Ctrl + b, then c`
        - Switch between windows:
            - Go to next window: `Ctrl + b, then n`
            - Go to previous window: `Ctrl + b, then p`
        - Split windows in panes:
            - Vertical split: `Ctrl + b, then %`
            - Horizontal split: `Ctrl + b, then "`
        - Managing Sessions:
            - To list all active Tmux sessions: `tmux ls`
            - To kill a specific tmux session: `tmux kill-session -t <session-name>`
            - To kill all tmux sessions: `tmux kill-server`
        - Resizing Panes: To resize panes `Pressing Ctrl use the directional arrows or the tab -D/U/L/R`
        - Copy Mode:
            - To enter copy mode use: `Ctrl + b then [`
    - [Tmux cheatsheet website](https://tmuxcheatsheet.com/)

4. Customizing Tmux Configuration
    - Basic Configuration: The Tmux configuration file, ~/.tmux.conf, lets you customize key bindings, colors, and other behaviors. If you don’t have one, you can create it: `touch ~/.tmux.conf`
    - Example Configurations: Add the following to customize your Tmux experience.
        - Change the prefix key to Ctrl + a (instead of Ctrl + b) `unbind C-b set -g prefix C-a`
        - Enable mouse support: `set -g mouse on`
    - Additional Resources: The [official Tmux documentation](https://github.com/tmux/tmux/wiki) offers an in-depth look at advanced configurations

5. Bonus Tips and Tricks for Tmux
    - Tmux plugins: you can install several [Tmux plugins](https://github.com/tmux-plugins/) to enhance your Tmux experience.
        - Using Tmux Resurrect: Tmux Resurrect is a plugin that saves and restores Tmux sessions. Install it to prevent losing sessions after a reboot.
            - Clone the plugin: `git clone https://github.com/tmux-plugins/tmux-resurrect ~/clone/path`
            - Add the plugin to your .tmux.conf> `run-shell ~/clone/path/resurrect.tmux`
            - Reload Tmux environment with: `tmux source-file ~/.tmux.conf`
            - Save a session with: `Ctrl + b, then Ctrl + s`
            - Restore a session with: `Ctrl + b, then Ctrl + r`

## Summary 📋
Tmux can significantly improve your terminal productivity. With these tools, you’ll be able to get the most out of it. Here’s a quick summary of what we covered:
- Installing Tmux on various operating systems.
- Basic Usage: creating, managing, and detaching sessions.
- Customization through .tmux.conf for a personalized experience.
- Bonus Tips for enhancing productivity, including an example on how to manually install a Tmux plugin called Tmux Resurrect.



## Resources 📂
- [Tmux repository](https://github.com/tmux/tmux)
- [Tmux official wiki](https://github.com/tmux/tmux/wiki)
- [Tmux cheatsheet website](https://tmuxcheatsheet.com/)
- [Tmux plugins](https://github.com/tmux-plugins/)

# Credits and Contributions 🤝
If you found this guide helpful, feel free to leave a star ⭐ on the repository! Contributions are welcome. Please check the Contributing section in the root of this repository.
