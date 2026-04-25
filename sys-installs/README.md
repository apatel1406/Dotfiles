## Details
- This script installs aws command line interface so you can control AWS from your terminal instead of the browser
- Checks that you are running as root, required to install software
- Checks that apt is available this script only works on Ubuntu/Debian Linux
- Shows you what will be installed and asks if you want to continue
- Checks if something called aws already exists, stops if it does
- Installs curl and unzip
- Downloads and runs AWS CLI installer in the backend

## Links
1. [AWSCLIInstallation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) > Used for downloading and installing AWS CLI v2
2. [Ubuntu Manual](https://manpages.ubuntu.com/manpages/xenial/man8/sudo.8.html) > How sudo and root privileges work when running scripts.
3. [$EUID Help](https://askubuntu.com/questions/1290918/need-to-change-euid-value-to-non-zero-in-the-bash-shell) > Helped explain how $EUID is used to check if a script is being run with root permissions.
