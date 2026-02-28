#!/bin/bash
# FastStart Brain — Install template workspace files
# Usage: curl -fsSL https://raw.githubusercontent.com/loki-bedlam/faststart-brain/main/install.sh | bash
set -e

DEST="${OPENCLAW_WORKSPACE:-/home/ec2-user/.openclaw/workspace}"
REPO="https://raw.githubusercontent.com/loki-bedlam/faststart-brain/main/template"

mkdir -p "$DEST/memory"
cd "$DEST"

echo ""
echo "🧠 FastStart Brain — Installing to $DEST"
echo ""

FILES="SOUL.md IDENTITY.md USER.md TOOLS.md AGENTS.md CLAUDE.md PROJECT-GUIDELINES.md HEARTBEAT.md APP-REGISTRY.md"

for f in $FILES; do
  curl -fsSL "$REPO/$f" -o "$f" && echo "  ✅ $f"
done

echo ""
echo "✅ Done! $(ls -1 *.md 2>/dev/null | wc -l) files in $DEST"
echo ""
echo "Next steps:"
echo "  1. Edit USER.md — add your human's details"
echo "  2. Edit IDENTITY.md — pick a name and emoji"
echo "  3. Edit TOOLS.md — add your AWS Account ID, region, instance ID"
echo "  4. Read CLAUDE.md for full bootstrap instructions"
echo ""
echo "Override install path: OPENCLAW_WORKSPACE=/your/path curl ... | bash"
