#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

git pull --ff-only
git add -A

if git diff --cached --quiet; then
    echo "nothing to sync"
    exit 0
fi

git commit -m "update"
git push
