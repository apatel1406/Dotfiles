### Overview
- This repo contains Linux configuration files and setup scripts.
- Includes Vim Configuration `.vimrc`
- Shell Aliases for shortcuts
- Automation script for installing AWS CLI

### Vim Configuration
- Vundle
- Jellybeans.vim for colorscheme
- vim-fugitive for git integration
- Includes copy.sh that copies .vimrc into the home directory
  
### Bash Aliases
- Making navigating your shell much easier
- By adding shortcuts for commonly used commands
- Includes shortcuts for Git, Installation, and Apache service control
- Includes copy.sh file to copy .bach_alaises into the user's home directory.

###  AWS Command Line Interface Installation
- Automates installation of AWS CLI v2
- Includes installation script.

### How to use
- Close the repo
  - git clone git@github.com:apatel1406/Dotfiles.git
- Setup vim
  - bash "Path to vim script"
- Install Bash Aliases
  - bash "Path to aliases script"
  - source ~/.bash_aliases
- Install AWS CLI
  - sudo bash "Path to AWS CLI installation script"
