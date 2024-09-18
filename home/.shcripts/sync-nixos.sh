#!/run/current-system/sw/bin/bash

# Define the path to the configuration directory
path_to_config=~/Nixium

###############################################
# NIXOS
###############################################

# Define the source and destination directories
SOURCE_DIR=/etc/nixos/
DEST_DIR="$path_to_config/nixos/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
