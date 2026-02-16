#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${1:-$HOME/CodexAgentKit}"
FORCE="${2:-}"

SOURCE_TEMPLATE="$SCRIPT_DIR/PROJECT_TEMPLATE"
SOURCE_LAUNCHER="$SCRIPT_DIR/new_project.command"

if [ ! -d "$SOURCE_TEMPLATE" ]; then
  echo "Missing template: $SOURCE_TEMPLATE"
  exit 1
fi

if [ ! -f "$SOURCE_LAUNCHER" ]; then
  echo "Missing launcher: $SOURCE_LAUNCHER"
  exit 1
fi

if [ -e "$TARGET_DIR" ] && [ "$FORCE" != "--force" ]; then
  echo "Target exists: $TARGET_DIR"
  echo "Use: bash install.sh \"$TARGET_DIR\" --force"
  exit 1
fi

rm -rf "$TARGET_DIR"
mkdir -p "$TARGET_DIR"
cp -R "$SOURCE_TEMPLATE" "$TARGET_DIR/PROJECT_TEMPLATE"
cp "$SOURCE_LAUNCHER" "$TARGET_DIR/new_project.command"
chmod +x "$TARGET_DIR/new_project.command"
mkdir -p "$TARGET_DIR/PROJECTS"

cat <<MSG
Installed successfully.

Location:
  $TARGET_DIR

Next:
1) Open $TARGET_DIR
2) Double-click new_project.command
3) Enter a new project name
MSG
