#!/bin/bash

filename="discord.tar.gz"
url="https://discord.com/api/download?platform=linux&format=tar.gz"
app_path="/usr/share/discord"

# Downloading arhive
echo "Downloading..."
wget -q --show-progress -O $filename $url

# Decompressing discord.tar.gz
echo "Decompressing discord.tar.gz"
tar -xzvf $filename
echo "Decompressing done."

# Changing name of archive
mv Discord/ discord/

# Moving "discord" to /usr/share
echo "Moving discord/ ..."
if [ -d "$app_path" ]; then
    echo "Removing existing Discord directory..."
    sudo rm -rf $app_path
fi
sudo mv discord/ $app_path
echo "Successfully moved."

# Removing discord.tar.gz
echo "Removing discord.tar.gz..."
rm $filename
echo "$filename removed."

echo "Discord app is successfully updated."
