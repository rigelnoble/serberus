#!/bin/bash

# Directories where serberus.lock will be recalled
# These directories need to pre-exist. You can copy this part from your 'unleash_serberus.sh' script.
paths=(
  "/path/to/first"
  "/path/to/second"
  "/path/to/third"
)

# Loop through each path specified above.
for dir_path in "${paths[@]}"; do

  file_path="${dir_path%/}/serberus.lock"

  # Recall serberus.lock - Remove immutability and delete file.
  if sudo chattr -i "$file_path" 2>/dev/null && rm "$file_path"; then
    echo "succesfully recalled: $file_path"
  else
    echo "error. could not recall: $file_path"
  fi
done
