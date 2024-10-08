#!/bin/bash

# Print information
echo "Discord Canary Updater v1.0"
echo "By ScarlettPPC 2024"

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
wget https://dl-canary.discordapp.net/apps/linux/${versionnum}/discord-canary-${versionnum}.tar.gz

# Extract file
tar -xvzf discord-canary-${versionnum}.tar.gz

# Delete archive
rm -rf discord-canary-${versionnum}.tar.gz

echo ""
echo "Done!"
