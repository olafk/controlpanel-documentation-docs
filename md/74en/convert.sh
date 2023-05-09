#!/bin/bash

outdir="./out"
mkdir -p ${outdir}

echo "creating directories in ${outdir}"
for file in com*/ ; do mkdir -p "${outdir}/$file"; done

NUMFILES=$(ls *.md | wc -l)
echo "converting ${NUMFILES} top level files"
for path in *.md; do
  out="${outdir}/${path/.md/}.html"
  pandoc -s "${path}" -o "${out}" --metadata=title:"Olaf's ControlPanel Documentation" --template=pandoc/default.html
done

NUMFILES=$(ls */*.md | wc -l)
echo "converting ${NUMFILES} files in subdirectories"
for path in */*.md; do
  out="${outdir}/${path/.md/}.html"
  pandoc -s "${path}" -o "${out}" --metadata=title:"Olaf's ControlPanel Documentation" --template=pandoc/default.html
done
