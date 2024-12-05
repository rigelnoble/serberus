#!/bin/bash

# Directories where serberus.lock will be created.
# These directories need to already exist.
paths=(
  "/path/to/first"
  "/path/to/second"
  "/path/to/third"
)

# Loop through each path specified above.
for dir_path in "${paths[@]}"; do

  file_path="${dir_path%/}/serberus.lock"

  # Unleash serberus.lock - Create file and make immutable.
  if touch "$file_path" 2>/dev/null && sudo chattr +i "$file_path"; then
    echo "succesfully unleashed: $file_path"
  else
    echo "error. could not let the dogs out: $file_path"
  fi
done
