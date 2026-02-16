#!/bin/bash
set -euo pipefail

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
TEMPLATE_DIR="$BASE_DIR/PROJECT_TEMPLATE"
PROJECTS_DIR="$BASE_DIR/PROJECTS"

if [ ! -d "$TEMPLATE_DIR" ]; then
  echo "Template not found: $TEMPLATE_DIR"
  exit 1
fi

mkdir -p "$PROJECTS_DIR"

echo ""
echo "New project will be created in:"
echo "  $PROJECTS_DIR"
echo ""

read -r -p "Project name (example: MyApp): " PROJECT_NAME

# Trim leading/trailing spaces
PROJECT_NAME="${PROJECT_NAME#${PROJECT_NAME%%[![:space:]]*}}"
PROJECT_NAME="${PROJECT_NAME%${PROJECT_NAME##*[![:space:]]}}"

if [ -z "$PROJECT_NAME" ]; then
  echo "Project name is required."
  exit 1
fi

TARGET_DIR="$PROJECTS_DIR/$PROJECT_NAME"

if [ -e "$TARGET_DIR" ]; then
  echo "Already exists: $TARGET_DIR"
  exit 1
fi

cp -R "$TEMPLATE_DIR" "$TARGET_DIR"

# Optional: personalize the PRD title
PRD_FILE="$TARGET_DIR/spec/PRD.md"
if [ -f "$PRD_FILE" ]; then
  printf "# PRD - %s\n\n" "$PROJECT_NAME" > "$PRD_FILE"
  cat >> "$PRD_FILE" <<'PRD'
Problem:

Users:

Goals:

Non-goals:

Constraints:

Success criteria:
PRD
fi

echo ""
echo "Created: $TARGET_DIR"
echo "Next: open the folder and fill spec/PRD.md, spec/Interfaces.md, spec/TestPlan.md"
