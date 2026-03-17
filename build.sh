#!/bin/bash

# Paths
CODE_DIR="challenges-code"
TARGET_DIR="challenges"
TEMPLATE="template.html"  # Change this to your actual file

# Loop through each .R file in challenges-code
for file in "$CODE_DIR"/*.R; do
  # Get the filename without extension
  filename=$(basename "$file" .R)

  # Extract the title from the hashpipe (format: #| title: "Title here")
  title=$(grep -m 1 '^#| title:' "$file" | sed 's/^#| title: "\(.*\)"$/\1/')
  
  # Use filename as fallback if no title found
  if [ -z "$title" ]; then
    title="$filename"
  fi

  # Create a matching subfolder in challenges/
  mkdir -p "$TARGET_DIR/$filename"

  # Copy the template file and replace the title
  sed "s|<title></title>|<title>${title} - ggplot Battles</title>|" "${TEMPLATE}" > "${TARGET_DIR}/${filename}/index.html"
done

Rscript printer.R