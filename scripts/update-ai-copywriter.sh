#!/usr/bin/env bash
# Re-vendors the ai-copywriter sub-skill from its upstream repo.
# Upstream (https://github.com/mikiarlo3/ai-copywriter) is the source of
# truth; the copy under skills/ai-copywriter/ is never edited here.
# Run this, review the diff, commit, then run scripts/build-bundle.sh.
set -euo pipefail
cd "$(dirname "$0")/.."

UPSTREAM="mikiarlo3/ai-copywriter"
FILES=(SKILL.md LICENSE references/linkedin-virality.md)

for f in "${FILES[@]}"; do
  mkdir -p "skills/ai-copywriter/$(dirname "$f")"
  curl -fsSL "https://raw.githubusercontent.com/$UPSTREAM/HEAD/$f" \
    -o "skills/ai-copywriter/$f"
  echo "synced $f"
done

echo "Done. Review with: git diff skills/ai-copywriter"
echo "Then rebuild dist/: ./scripts/build-bundle.sh"
