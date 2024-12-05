#!/bin/bash

# Array of directories where serberus.lock will be created. These directories need to already exist.
paths=(
  "/path/to/first"
  "/path/to/second"
  "/path/to/third"
)

# Loop through each path specified above.
for dir_path in "${paths[@]}"; do

  # Make file path
  file_path="${dir_path%/}/serberus.lock"

  # Unleash serberus.lock and make path immutable.
  if touch "$file_path" && sudo chattr +i "$file_path"; then
    echo "Created and set immutable: $file_path"
  else
    echo "Error: $file_path"
  fi
done
