# .bash_profile

# Interactive vs Non-Interactive Shells:
# - Interactive: Reads/writes to terminal waiting for the user input.
# - Non-Interactive: Runs scripts without terminal.

# Login vs Non-Login Shells:
# - Login: Started at login (e.g., SSH, console login to local system, bash launched with the --login option).
# - Non-Login: Started from another shell (e.g., new terminal GUI tab or calling `bash` command in a shell).

# Bash reads different files based on shell type:
# - Login: /etc/profile, ~/.bash_profile, ~/.bash_login, ~/.profile
# - Non-Login: ~/.bashrc

### Below we add the instructions for login shells ###
# Source .bashrc if it exists so that the login shell behaves like the non-login shell
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
