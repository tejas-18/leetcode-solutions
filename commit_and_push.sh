#!/bin/bash
# Navigate to your solutions directory
cd "$(dirname "$0")"

# Fetch the latest changes from the remote repository
echo "Fetching latest changes..."
git fetch origin main

# Check if there are any changes to commit
echo "Listing files..."
git status

# Add all new or modified files to git
echo "Adding changes..."
git add .

# Commit the changes with a message
echo "Committing changes..."
git commit -m "LeetCode solution for $(date +'%Y-%m-%d')"

# Push the changes to GitHub
echo "Pushing changes..."
git push origin main
