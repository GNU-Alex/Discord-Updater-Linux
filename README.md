# Discord Updater Script

This Bash script allows you to download, extract, and install the latest version of the Discord application for Linux. It also replaces any existing version of Discord in the `/usr/share/discord` directory.

## Prerequisites

Before running this script, ensure you have the following:

- A Linux system
- `wget` installed for downloading
- `tar` installed for extraction
- Sudo access to move files to `/usr/share`

## Installation

1. **Download the script**:
   You can copy the script into your $HOME folder.

2. **Make the script executable**:
   Open a terminal and run the following command:
   ```bash
   chmod +x update_discord.sh
