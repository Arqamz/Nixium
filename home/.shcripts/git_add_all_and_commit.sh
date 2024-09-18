#!/usr/bin/env bash

# Check if commit message is provided
if [ -z "$1" ]; then
  echo "Usage: gaac \"Commit message\""
  exit 1
fi

# Add all changes
git add .

# Commit with the provided message and sign the commit
git commit -S -m "$1"

