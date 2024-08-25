#!/bin/bash

# Set Git identity
git config --global user.email "tejassp18@gmail.com"
git config --global user.name "Tejas Parandekar"

# Navigate to the script directory
cd "$(dirname "$0")" || { echo 'Failed to change directory'; exit 1; }

echo "Current directory: $(pwd)"

# Fetch and merge the latest changes
#echo "Fetching and merging latest changes..."
#git fetch origin main || { echo 'Git fetch failed'; exit 1; }
#git merge origin/main || { echo 'Git merge failed'; exit 1; }

echo "Listing files..."
ls -la || { echo 'Failed to list files'; exit 1; }

echo "Checking git status..."
git status || { echo 'Git status failed'; exit 1; }

echo "Adding changes..."
git add . || { echo 'Git add failed'; exit 1; }

echo "Committing changes..."
git commit -m "LeetCode solution for $(date +'%Y-%m-%d')" || { echo 'Git commit failed'; exit 1; }

echo "Pushing changes..."
git push || { echo 'Git push failed'; exit 1; }



