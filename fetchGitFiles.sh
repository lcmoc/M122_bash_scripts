#!/bin/bash

# Replace the following variables with your own values
GITHUB_USER="lcmoc"
GITHUB_REPO="M122_bash_scripts"

#!/bin/bash
# Get the list of files and directories in the repository
files=$(curl -s "https://api.github.com/repos/${GITHUB_USER}/${GITHUB_REPO}/contents" | grep -oE '"name": "[^"]+"' | cut -d'"' -f4)

echo "Available files and directories:"

# Display the list of files and directories to the user
select file in $files; do
  # Check if the selected file is a directory
  if curl -s "https://api.github.com/repos/${GITHUB_USER}/${GITHUB_REPO}/contents/$file" | grep -o "\"type\":\"dir\"" >/dev/null; then
    echo "Selected file is a directory, please select a file or subdirectory"
  else
    # Download the selected file from GitHub
    curl -o "$file" "https://raw.githubusercontent.com/${GITHUB_USER}/${GITHUB_REPO}/main/$file"
    echo "File downloaded successfully"
    break
  fi
done
