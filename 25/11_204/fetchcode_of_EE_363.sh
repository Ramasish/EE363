#!/bin/bash
# Script to download the full EE363 repo and move to the desired directory

echo "Cloning full repository..."
git clone https://github.com/spkkarri/EE363.git

echo "Navigating to target directory..."
cd EE363/25/11_204

echo "Done. You're now in:"
pwd