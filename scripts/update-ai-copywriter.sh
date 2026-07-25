#!/usr/bin/env bash
# Re-vendors the ai-copywriter content from its upstream repo into
# references/ai-copywriter.md (frontmatter stripped, provenance header
# added). Upstream (https://github.com/mikiarlo3/ai-copywriter) is the
# source of truth; the reference file is never edited by hand.
# It is a reference file rather than a nested SKILL.md so this repo
# stays a SINGLE skill — some hosts reject multi-skill packages.
# Run this, review the diff, commit, then run scripts/build-bundle.sh.
set -euo pipefail
cd "$(dirname "$0")/.."

UPSTREAM="mikiarlo3/ai-copywriter"
TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT

curl -fsSL "https://raw.githubusercontent.com/$UPSTREAM/HEAD/SKILL.md" -o "$TMP"

python3 - "$TMP" <<'EOF'
import sys
src = open(sys.argv[1]).read()
lines = src.split('\n')
if lines[0] == '---':
    end = lines.index('---', 1)
    body = '\n'.join(lines[end+1:]).lstrip('\n')
else:
    body = src
header = """<!-- Vendored from https://github.com/mikiarlo3/ai-copywriter (MIT license,
     by Mickey Haslavsky, built on blader/humanizer). This is a reference file,
     not a standalone skill, so the package stays a single skill. Do not edit
     by hand — re-sync with scripts/update-ai-copywriter.sh -->

"""
open('references/ai-copywriter.md','w').write(header + body)
EOF

echo "synced references/ai-copywriter.md from $UPSTREAM"
echo "Review with: git diff references/ai-copywriter.md"
echo "Then rebuild dist/: ./scripts/build-bundle.sh"
