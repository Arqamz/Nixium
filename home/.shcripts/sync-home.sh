#!/run/current-system/sw/bin/bash

# Define the path to the configuration directory
path_to_config=~/Nixium/home

###############################################
#Scripts
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.scripts/
DEST_DIR="$path_to_config/.shcripts/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Hyprland
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/hypr/
DEST_DIR="$path_to_config/hypr/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Waybar
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/waybar/
DEST_DIR="$path_to_config/waybar/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#NVIM
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/nvim/
DEST_DIR="$path_to_config/nvim/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Alacritty
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/alacritty/
DEST_DIR="$path_to_config/alacritty/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"


###############################################
#Foot
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/foot/
DEST_DIR="$path_to_config/foot/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Cava
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/cava/
DEST_DIR="$path_to_config/cava/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

###############################################
# swaync
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/swaync/
DEST_DIR="$path_to_config/swaync/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

###############################################
# wlogout
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/wlogout/
DEST_DIR="$path_to_config/wlogout/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
# Wal templates
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/wal/
DEST_DIR="$path_to_config/wal/"
``
# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
# .gitconfig
###############################################

# Define the source and destination files
SOURCE_FILE=~/.gitconfig
DEST_FILE="$path_to_config/.gitconfig"

# Use rsync to copy and synchronize the single file
rsync -av --delete "$SOURCE_FILE" "$DEST_FILE"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_FILE to $DEST_FILE"


###############################################
# ZSH CONFIG
###############################################

######################
# .zshrc
######################

# Define the source and destination files
SOURCE_FILE=~/.zshrc
DEST_FILE="$path_to_config/zsh/.zshrc"

# Use rsync to copy and synchronize the single file
rsync -av --delete "$SOURCE_FILE" "$DEST_FILE"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_FILE to $DEST_FILE"

######################
# .ohmyzsh
######################

# Define the source and destination directories
SOURCE_DIR=~/.oh-my-zsh/
DEST_DIR="$path_to_config/zsh/.oh-my-zsh/"

# Use rsync to copy and synchronize the directory

rsync -avz --exclude=".git" \
            --exclude=".github" \
            --exclude="CONTRIBUTING.md" \
            --exclude="LICENSE.txt" \
            --exclude=".gitpod.yml" \
            --exclude=".gitpod.Dockerfile" \
            --exclude=".prettierrc" \
            --exclude="log" \
            --exclude="cache" \
            --exclude=".editorconfig" \
            --exclude=".gitignore" \
            --exclude="CODE_OF_CONDUCT.md" \
            --exclude="SECURITY.md" \
            --exclude="README.md" \
            --exclude="SECURITY/md" \
	    --delete  "$SOURCE_DIR" "$DEST_DIR" 

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_FILE to $DEST_FILE"

######################
# .p10k.zsh
######################

# Define the source and destination files
SOURCE_FILE=~/.p10k.zsh
DEST_FILE="$path_to_config/zsh/.p10k.zsh"

# Use rsync to copy and synchronize the single file
rsync -av --delete "$SOURCE_FILE" "$DEST_FILE"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_FILE to $DEST_FILE"

figlet "Syncing hyprdots directory now"
################################

# Define the path to the configuration directory
path_to_config=~/hyprdots

###############################################
#Hyprland
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/hypr/
DEST_DIR="$path_to_config/hypr/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Waybar
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/waybar/
DEST_DIR="$path_to_config/waybar/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#NVIM
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/nvim/
DEST_DIR="$path_to_config/nvim/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Alacritty
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/alacritty/
DEST_DIR="$path_to_config/alacritty/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"


###############################################
#Foot
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/foot/
DEST_DIR="$path_to_config/foot/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
#Cava
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/cava/
DEST_DIR="$path_to_config/cava/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

###############################################
# swaync
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/swaync/
DEST_DIR="$path_to_config/swaync/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

###############################################
# wlogout
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/wlogout/
DEST_DIR="$path_to_config/wlogout/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
# Wal templates
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.config/wal/
DEST_DIR="$path_to_config/wal/"
``
# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"

###############################################
# .gitconfig
###############################################

# Define the source and destination files
SOURCE_FILE=~/.gitconfig
DEST_FILE="$path_to_config/.gitconfig"

# Use rsync to copy and synchronize the single file
rsync -av --delete "$SOURCE_FILE" "$DEST_FILE"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_FILE to $DEST_FILE"


###############################################
# ZSH CONFIG
###############################################

######################
# .zshrc
######################

# Define the source and destination files
SOURCE_FILE=~/.zshrc
DEST_FILE="$path_to_config/zsh/.zshrc"

# Use rsync to copy and synchronize the single file
rsync -av --delete "$SOURCE_FILE" "$DEST_FILE"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_FILE to $DEST_FILE"

######################
# .ohmyzsh
######################

# Define the source and destination directories
SOURCE_DIR=~/.oh-my-zsh/
DEST_DIR="$path_to_config/zsh/.oh-my-zsh/"

# Use rsync to copy and synchronize the directory

rsync -avz --exclude=".git" \
            --exclude=".github" \
            --exclude="CONTRIBUTING.md" \
            --exclude="LICENSE.txt" \
            --exclude=".gitpod.yml" \
            --exclude=".gitpod.Dockerfile" \
            --exclude=".prettierrc" \
            --exclude="log" \
            --exclude="cache" \
            --exclude=".editorconfig" \
            --exclude=".gitignore" \
            --exclude="CODE_OF_CONDUCT.md" \
            --exclude="SECURITY.md" \
            --exclude="README.md" \
            --exclude="SECURITY/md" \
	    --delete  "$SOURCE_DIR" "$DEST_DIR" 

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_FILE to $DEST_FILE"

######################
# .p10k.zsh
######################

# Define the source and destination files
SOURCE_FILE=~/.p10k.zsh
DEST_FILE="$path_to_config/zsh/.p10k.zsh"

# Use rsync to copy and synchronize the single file
rsync -av --delete "$SOURCE_FILE" "$DEST_FILE"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_FILE to $DEST_FILE"

###############################################
#Scripts
###############################################

# Define the source and destination directories
SOURCE_DIR=~/.scripts/
DEST_DIR="$path_to_config/.shcripts/"

# Use rsync to copy and synchronize the contents
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR"

# Print a message indicating the process is complete
echo "Synchronization and copy complete from $SOURCE_DIR to $DEST_DIR"