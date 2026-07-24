#!/usr/bin/env bash
# One-line installer for the cold-outreach-playbook skills.
#
#   curl -fsSL https://raw.githubusercontent.com/mikiarlo3/enso-ai-sdr/main/install.sh | bash
#
# Detects the agent harnesses on this machine and installs both skills
# (cold-outreach-playbook + ai-copywriter) into each. No arguments needed.
#
# Options:
#   --project     also install into ./.claude/skills (this repo/project only)
#   --dir <path>  also install into a custom skills directory
set -euo pipefail

REPO="mikiarlo3/enso-ai-sdr"
BRANCH="${ENSO_SDR_BRANCH:-main}"
SKILLS=(cold-outreach-playbook ai-copywriter)
INSTALLED=0

EXTRA_DIRS=()
PROJECT=0
while [ $# -gt 0 ]; do
  case "$1" in
    --project) PROJECT=1 ;;
    --dir) shift; EXTRA_DIRS+=("$1") ;;
    *) echo "Unknown option: $1" >&2; exit 2 ;;
  esac
  shift
done

# 1) Claude Code: prefer the native plugin flow (brings the /outreach-campaign
#    command along, and /plugin can manage updates later).
if command -v claude >/dev/null 2>&1; then
  claude plugin marketplace add "$REPO" >/dev/null 2>&1 || true
  if claude plugin install "cold-outreach-playbook@enso-ai-sdr" >/dev/null 2>&1; then
    echo "+ Claude Code: installed plugin cold-outreach-playbook@enso-ai-sdr"
    echo "  (restart your Claude Code session to load it)"
    INSTALLED=1
    CLAUDE_DONE=1
  fi
fi

# 2) Fetch the repo once for folder-copy installs.
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT
FETCHED=0
if curl -fsSL "https://codeload.github.com/$REPO/tar.gz/refs/heads/$BRANCH" 2>/dev/null \
    | tar -xz -C "$TMP" --strip-components=1 2>/dev/null; then
  FETCHED=1
elif git clone --depth 1 --branch "$BRANCH" "https://github.com/$REPO.git" "$TMP/clone" >/dev/null 2>&1; then
  cp -r "$TMP/clone/." "$TMP/" && FETCHED=1
fi

if [ "$FETCHED" = 0 ]; then
  if [ "$INSTALLED" = 1 ]; then
    echo "! Could not fetch the repo for folder-copy installs (plugin install above still succeeded)."
    exit 0
  fi
  echo "! Could not download $REPO ($BRANCH). Check your network, or set ENSO_SDR_BRANCH." >&2
  exit 1
fi

copy_into() { # $1 = dest skills dir, $2 = label
  mkdir -p "$1"
  local s
  for s in "${SKILLS[@]}"; do
    rm -rf "${1:?}/$s"
    cp -r "$TMP/skills/$s" "$1/$s"
  done
  echo "+ $2: copied skills into $1"
  INSTALLED=1
}

# Claude Code without the CLI plugin flow (or CLI missing but ~/.claude exists)
if [ -z "${CLAUDE_DONE:-}" ] && { command -v claude >/dev/null 2>&1 || [ -d "$HOME/.claude" ]; }; then
  copy_into "$HOME/.claude/skills" "Claude Code (skills dir)"
fi

# Other known harnesses, when present
[ -d "$HOME/.openclaw" ]        && copy_into "$HOME/.openclaw/skills" "OpenClaw"
[ -d "$HOME/.config/opencode" ] && copy_into "$HOME/.config/opencode/skills" "OpenCode"
[ -d "$HOME/.codex" ]           && copy_into "$HOME/.codex/skills" "Codex"

[ "$PROJECT" = 1 ] && copy_into ".claude/skills" "this project"
for d in "${EXTRA_DIRS[@]:-}"; do
  [ -n "$d" ] && copy_into "$d" "custom dir"
done

if [ "$INSTALLED" = 0 ]; then
  echo "No known agent harness found on this machine."
  echo "Options:"
  echo "  - install into a specific directory:  bash install.sh --dir /path/to/skills"
  echo "  - chat apps (claude.ai, ChatGPT, Manus, ...): see docs/install/ in the repo,"
  echo "    or use the single-file bundle: dist/cold-outreach-playbook-bundle.md"
  exit 1
fi

echo "Done. Start a fresh agent session and ask for a cold outreach campaign."
