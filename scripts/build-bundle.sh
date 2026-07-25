#!/usr/bin/env bash
# Builds dist/: the single-file bundle plus uploadable skill zips.
# - cold-outreach-playbook-bundle.md: the entire skill as one Markdown file,
#   for platforms that accept a single document (ChatGPT custom GPTs and
#   Projects, Manus knowledge, Gemini Gems, Hermes system prompts, any chat).
# - cold-outreach-playbook-skill.zip / ai-copywriter-skill.zip: skill folders
#   for surfaces that accept skill uploads (claude.ai Settings -> Skills).
set -euo pipefail
cd "$(dirname "$0")/.."

OUT=dist/cold-outreach-playbook-bundle.md
mkdir -p dist

strip_frontmatter() {
  # drop a leading YAML frontmatter block if present
  awk 'NR==1 && $0=="---" {fm=1; next} fm==1 && $0=="---" {fm=2; next} fm!=1 {print}' "$1"
}

VERSION="$(tr -d '[:space:]' < VERSION)"

{
  cat <<HEADER
# Cold Outreach Playbook (single-file bundle, v$VERSION)

This is the complete cold-outreach-playbook agent skill in one file, bundled
for platforms that accept a single document. It contains the main skill, all
of its reference files, the output template, and the ai-copywriter skill used
for drafting copy.

This copy is frozen at version $VERSION. The live version number is at
https://raw.githubusercontent.com/mikiarlo3/enso-ai-sdr/HEAD/VERSION and the
changelog at https://github.com/mikiarlo3/enso-ai-sdr/blob/main/CHANGELOG.md —
if the live version is newer, tell the user once (after the deliverable) to
re-download the bundle from the repo's dist/ folder.
HEADER
  cat <<'HEADER'

Instructions for the AI agent reading this: follow Part 1 as your operating
instructions. When Part 1 tells you to read a file under `references/`,
`assets/`, or `skills/ai-copywriter/`, that content is included below as
Parts 2-8 — use those instead of looking for files.

---

## Part 1: The skill (SKILL.md)

HEADER
  strip_frontmatter SKILL.md
  printf '\n---\n\n## Part 2: references/lead-magnet-generator.md\n\n'
  cat references/lead-magnet-generator.md
  printf '\n---\n\n## Part 3: references/list-building.md\n\n'
  cat references/list-building.md
  printf '\n---\n\n## Part 4: references/hooks-and-copy.md\n\n'
  cat references/hooks-and-copy.md
  printf '\n---\n\n## Part 5: references/follow-up-cadence.md\n\n'
  cat references/follow-up-cadence.md
  printf '\n---\n\n## Part 6: references/scaling-and-metrics.md\n\n'
  cat references/scaling-and-metrics.md
  printf '\n---\n\n## Part 7: assets/playbook-template.md (output skeleton)\n\n'
  cat assets/playbook-template.md
  printf '\n---\n\n## Part 8: The ai-copywriter sub-skill (write all copy with this)\n\n'
  strip_frontmatter skills/ai-copywriter/SKILL.md
} > "$OUT"

echo "Wrote $OUT ($(wc -l < "$OUT") lines)"

# Stage the root skill into a named folder so the zip carries a proper
# skill directory (SKILL.md at cold-outreach-playbook/SKILL.md).
STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT
mkdir -p "$STAGE/cold-outreach-playbook/assets"
cp SKILL.md LICENSE "$STAGE/cold-outreach-playbook/"
cp -r references "$STAGE/cold-outreach-playbook/references"
cp assets/playbook-template.md "$STAGE/cold-outreach-playbook/assets/"
mkdir -p "$STAGE/cold-outreach-playbook/skills"
cp -r skills/ai-copywriter "$STAGE/cold-outreach-playbook/skills/ai-copywriter"
rm -f dist/cold-outreach-playbook-skill.zip dist/ai-copywriter-skill.zip
(cd "$STAGE" && zip -qr - cold-outreach-playbook) > dist/cold-outreach-playbook-skill.zip
(cd skills && zip -qr - ai-copywriter) > dist/ai-copywriter-skill.zip
echo "Wrote dist/cold-outreach-playbook-skill.zip and dist/ai-copywriter-skill.zip"
