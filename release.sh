#!/bin/sh

git add .
git commit -m "release v$1"
git push origin main
git tag -a v$1 -m v$1
git push origin v$1
gh release create v$1 --generate-notes