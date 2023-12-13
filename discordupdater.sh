#!/bin/bash

# Print information
echo "Discord Updater v1.0"
echo "By ScarlettPPC 2023"

# Directory to save the Discord folder
echo "Enter directory to save Discord folder to (you must have write permissions):"
read _location

# Current version of Discord application
echo "Enter Discord's current version number (ex. 0.0.35):"
read versionnum

# Starting update
echo "Updating Discord..."

# Change to directory to put the folder in
cd $_location

# Pull file from Discord's servers
wget https://dl.discordapp.net/apps/linux/${versionnum}/discord-${versionnum}.tar.gz

# Extract file
tar -xvzf discord-${versionnum}.tar.gz

# Delete archive
rm -rf discord-${versionnum}.tar.gz

echo ""
echo "Done!"
