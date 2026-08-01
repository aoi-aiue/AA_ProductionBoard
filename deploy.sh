#!/bin/bash
# ProductionBoard を GitHub Pages へ反映する。
# 使い方:  ./deploy.sh  または  ./deploy.sh "変更内容のメモ"
set -e
SRC="/Users/daisukesato/Desktop/CLAUDE/AA_ProductionBoard/index.html"
cd "$(dirname "$0")"
cp "$SRC" index.html
if git diff --quiet; then echo "変更はありません。"; exit 0; fi
git add index.html
git commit -q -m "${1:-ProductionBoard を更新}"
git push -q origin main
echo "反映しました → https://aoi-aiue.github.io/AA_ProductionBoard/"
echo "(反映まで1〜2分かかります)"
