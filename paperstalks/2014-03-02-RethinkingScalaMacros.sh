#!/usr/bin/env bash
PRIVATE_TALKS_REPO="/Users/xeno_by/Projects/talks"
THIS_REPO="$(dirname "$0")"

if [[ -f "$THIS_REPO/2014-03-02-RethinkingScalaMacros.tex" ]]; then rm -f "$THIS_REPO/2014-03-02-RethinkingScalaMacros.tex"; fi
if [[ -f "$THIS_REPO/2014-03-02-RethinkingScalaMacros.pdf" ]]; then rm -f "$THIS_REPO/2014-03-02-RethinkingScalaMacros.pdf"; fi

cp "$PRIVATE_TALKS_REPO/2014-03-02-NEScala/2014-03-02-RethinkingScalaMacros.tex" "$THIS_REPO/2014-03-02-RethinkingScalaMacros.tex"

# cp "$PRIVATE_TALKS_REPO/2014-03-02-NEScala/2014-03-02-RethinkingScalaMacros.pdf" "$THIS_REPO/2014-03-02-RethinkingScalaMacros.pdf"
cd "$THIS_REPO"
xelatex "$THIS_REPO/2014-03-02-RethinkingScalaMacros.tex" && xelatex "$THIS_REPO/2014-03-02-RethinkingScalaMacros.tex"
