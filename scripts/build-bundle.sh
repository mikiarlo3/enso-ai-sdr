#!/usr/bin/env bash
# Builds dist/cold-outreach-playbook-bundle.md: the entire plugin as one
# Markdown file, for platforms that accept a single document (ChatGPT
# custom GPTs and Projects, Manus knowledge, Gemini Gems, Hermes system
# prompts, or any plain LLM chat).
set -euo pipefail
cd "$(dirname "$0")/.."

OUT=dist/cold-outreach-playbook-bundle.md
mkdir -p dist

strip_frontmatter() {
  # drop a leading YAML frontmatter block if present
  awk 'NR==1 && $0=="---" {fm=1; next} fm==1 && $0=="---" {fm=2; next} fm!=1 {print}' "$1"
}

{
  cat <<'HEADER'
# Cold Outreach Playbook (single-file bundle)

This is the complete cold-outreach-playbook agent skill in one file, bundled
for platforms that accept a single document. It contains the main skill, all
of its reference files, the output template, and the ai-copywriter skill used
for drafting copy.

Instructions for the AI agent reading this: follow Part 1 as your operating
instructions. When Part 1 tells you to read a file under `references/`,
`assets/`, or `skills/ai-copywriter/`, that content is included below as
Parts 2-8 — use those instead of looking for files.

---

## Part 1: The skill (SKILL.md)

HEADER
  strip_frontmatter skills/cold-outreach-playbook/SKILL.md
  printf '\n---\n\n## Part 2: references/lead-magnet-generator.md\n\n'
  cat skills/cold-outreach-playbook/references/lead-magnet-generator.md
  printf '\n---\n\n## Part 3: references/list-building.md\n\n'
  cat skills/cold-outreach-playbook/references/list-building.md
  printf '\n---\n\n## Part 4: references/hooks-and-copy.md\n\n'
  cat skills/cold-outreach-playbook/references/hooks-and-copy.md
  printf '\n---\n\n## Part 5: references/follow-up-cadence.md\n\n'
  cat skills/cold-outreach-playbook/references/follow-up-cadence.md
  printf '\n---\n\n## Part 6: references/scaling-and-metrics.md\n\n'
  cat skills/cold-outreach-playbook/references/scaling-and-metrics.md
  printf '\n---\n\n## Part 7: assets/playbook-template.md (output skeleton)\n\n'
  cat skills/cold-outreach-playbook/assets/playbook-template.md
  printf '\n---\n\n## Part 8: The ai-copywriter sub-skill (write all copy with this)\n\n'
  strip_frontmatter skills/ai-copywriter/SKILL.md
} > "$OUT"

echo "Wrote $OUT ($(wc -l < "$OUT") lines)"

# Zip each skill folder for surfaces that accept skill uploads
# (claude.ai Settings -> Capabilities -> Skills, and compatible harnesses).
(cd skills && zip -qr ../dist/cold-outreach-playbook-skill.zip cold-outreach-playbook)
(cd skills && zip -qr ../dist/ai-copywriter-skill.zip ai-copywriter)
echo "Wrote dist/cold-outreach-playbook-skill.zip and dist/ai-copywriter-skill.zip"
