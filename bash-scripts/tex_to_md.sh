#!/bin/sh
# A script to convert a .tex file to a markdown file compatible with MathJax
# Usage ./tex_to_md.sh input.tex output-name

# Get the date
TODAY="$(date -I)"
# Assemble file name for o/p file
FILE="$TODAY-$2"
# Convert to html and use the date to assemble file name
pandoc -s $1 --mathjax -o "$FILE.html"
# Rename the html file to a markdown file
mv "$FILE.html" "$FILE.md"
# Delete first line of file containing doctype = html used sed
sed '1d' $FILE.md > tmpfile; mv tmpfile "$FILE.md" # POSIX
# Append below front matter string to top of file
FM="---\ntitle: $2\nlayout: post\ndate: $TODAY\npermalink: /blog/$2\ncomments: true\nmathjax: true\n---\n"
(echo $FM && cat "$FILE.md") > temp && mv temp "$FILE.md"


