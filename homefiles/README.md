### Alias 
- An alias file basiclly makes "shortcuts" for regularly used commands. 
- In .bashrc, at the bottom, you must put:
```
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
```
- This ensures that all changes made to the main file will reflect in .bashrc
- I chose aliases that make my life easier in launching/configuring my website. 
- Getting to my website script folder
- Shortcut to configure my sites
- A few git commands that I use a lot
- Updating and installing with sai and sau
- Starting, stopping, restartig apache. 


### Copying the script from this repo to users home directory
- Gave variable names to both locations 
- Copied over files to users home directory
- Echo message to let the user know that file has been copied and how they can reload

### Links 
- [Aliases](https://github.com/ctrlaltvikas/awesome-bash-alias) > Used for common and useful Bash aliases
- [Copying-Files-Scirpt](https://stackoverflow.com/questions/61959150/shell-script-to-copy-the-files) > Helpful guide to use cp command in script
- [Source-Alias-Script](https://gist.github.com/zachbrowne/8bc414c9f30192067831fafebd14255c) > Helped to make the script so aliases start working as soon as the machine loads up.
