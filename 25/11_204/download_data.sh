#!/bin/bash

pip install gdown

# URL of the public Google Drive folder
FOLDER_URL="https://drive.google.com/drive/folders/1inPsAmxpGm4bOLWiutJG9nv7APLpqZGy"

# Optional: Specify the download destination
DEST_DIR="./data"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Use gdown to download the entire folder
echo "Downloading from $FOLDER_URL into $DEST_DIR..."
gdown --folder "$FOLDER_URL" -O "$DEST_DIR"

echo "✅ Download completed! Files are saved in $DEST_DIR"
