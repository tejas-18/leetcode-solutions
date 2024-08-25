#!/bin/bash

# Set the path to your solutions folder and log file
SOLUTIONS_PATH="./solutions"
LOG_FILE="./auto_push.log"

# Set Git identity (using environment variables from GitHub Actions)
git config --global user.email "tejassp18@gmail.com"
git config --global user.name "Tejas Parandekar"

# Navigate to the script directory
cd "$(dirname "$0")" || { echo 'Failed to change directory'; exit 1; }

# Create the log file if it doesn't exist
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
fi

# Check for changes in the solutions folder
if [ -n "$(git status --porcelain "$SOLUTIONS_PATH")" ]; then
    echo "$(date): Changes detected in solutions folder, committing and pushing..." >> "$LOG_FILE"

    # Add the changes in the solutions folder
    git add "$SOLUTIONS_PATH"/*.java

    # Commit the changes
    git commit -m "Automated commit of Java files on $(date +'%Y-%m-%d')" || { echo 'Git commit failed'; exit 1; }

    # Push the changes to the remote repository
    git push origin main >> "$LOG_FILE" 2>&1 || { echo 'Git push failed'; exit 1; }
else
    echo "$(date): No changes to commit in solutions folder." >> "$LOG_FILE"
fi
