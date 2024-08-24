#!/bin/bash
# Navigate to your solutions directory
cd "$(dirname "$0")"

# Add all new or modified files to git
git add .

# Commit the changes with a message, e.g., today's date
git commit -m "LeetCode solution for $(date +'%Y-%m-%d')"

# Push the changes to GitHub
git push origin main
