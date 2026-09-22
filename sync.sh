#!/bin/bash
# Sync public notes from the vault into Quartz content/
# Run this before committing to publish updates.
#
# Usage: ./sync.sh

VAULT_PUBLIC="/Users/luchtan/Documents/la pica/public"
CONTENT="$(dirname "$0")/content"

rsync -av --delete \
  --exclude='.obsidian' \
  --exclude='*.canvas' \
  "$VAULT_PUBLIC/" "$CONTENT/"

echo ""
echo "Synced. Review changes with: git diff content/"
echo "Then commit and push to deploy."
