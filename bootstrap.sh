#!/usr/bin/env bash
set -euo pipefail

OWNER="${OWNER:-ayggdrasil}"
REPO="${REPO:-bible-for-agents}"
BRANCH="${BRANCH:-main}"
TARGET_DIR="${TARGET_DIR:-$HOME/CodexAgentKit}"
FORCE=""

usage() {
  cat <<'EOF'
Usage:
  bash bootstrap.sh [--target <path>] [--branch <name>] [--owner <name>] [--repo <name>] [--force]

Examples:
  bash bootstrap.sh
  bash bootstrap.sh --target "$HOME/CodexAgentKit" --force
EOF
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target)
      TARGET_DIR="${2:-}"
      shift 2
      ;;
    --branch)
      BRANCH="${2:-}"
      shift 2
      ;;
    --owner)
      OWNER="${2:-}"
      shift 2
      ;;
    --repo)
      REPO="${2:-}"
      shift 2
      ;;
    --force)
      FORCE="--force"
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      usage
      exit 1
      ;;
  esac
done

if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required."
  exit 1
fi

if ! command -v tar >/dev/null 2>&1; then
  echo "tar is required."
  exit 1
fi

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

ARCHIVE_URL="https://codeload.github.com/${OWNER}/${REPO}/tar.gz/refs/heads/${BRANCH}"
ARCHIVE_FILE="$TMP_DIR/repo.tar.gz"

echo "Downloading ${OWNER}/${REPO}@${BRANCH}..."
curl -fsSL "$ARCHIVE_URL" -o "$ARCHIVE_FILE"

echo "Extracting..."
tar -xzf "$ARCHIVE_FILE" -C "$TMP_DIR"

EXTRACTED_DIR="$TMP_DIR/${REPO}-${BRANCH}"
INSTALLER="$EXTRACTED_DIR/install.sh"

if [ ! -f "$INSTALLER" ]; then
  echo "install.sh not found in downloaded package."
  exit 1
fi

echo "Installing to: $TARGET_DIR"
if [ -n "$FORCE" ]; then
  bash "$INSTALLER" "$TARGET_DIR" "$FORCE"
else
  bash "$INSTALLER" "$TARGET_DIR"
fi

echo "Done."
