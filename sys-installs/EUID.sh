#!/bin/bash
# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
    echo "ERROR: Please run this script as root."
    echo "Try again with, sudo bash EUID.sh"
    exit 1
fi 

# Verify that the system uses the apt package manager
if ! command -v apt &>/dev/null; then
    echo "ERROR: This script needs the apt package manager."
    echo "Please run this on Ubuntu or a Debian-based Linux system."
    exit 1
fi

# Tells the user what will be installed
echo "This script will install the following:"
echo "curl, a tool used to download files from the internet, unzip, a tool used to unzip compressed files"
echo "AWS CLI v2, the Amazon Web Services command line tool"

# Ask the user for confirmation before proceeding
read -p "Do you want to continue? y/n: " answer

# Exit if the user does not confirm
if [[ "$answer" != "y" ]]; then
    echo "Cancelled."
    exit 0
fi

# Check if AWS CLI is already installed to avoid overwriting it
if command -v aws &>/dev/null; then
    echo "ERROR: A command called aws already exists on this computer."
    echo "Found at: $(command -v aws)"
    echo "This script will not overwrite it, remove it first and then run this script again."
    exit 1
fi

# Update package lists quietly
apt-get update -qq

# Install required dependencies 
apt-get install -y -qq curl unzip

# Download the AWS CLI v2 installer zip fil
curl -sSL "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o /tmp/awscliv2.zip

# Unzip the installer
unzip -q /tmp/awscliv2.zip -d /tmp/aws_install

# Run the AWS CLI installer silently
/tmp/aws_install/aws/install --quiet

# success message
echo "All done, AWS CLI was installed successfully."
echo "To confirm it installed, run aws --version and run aws configure"
