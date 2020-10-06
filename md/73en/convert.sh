#!/bin/bash

outdir="./out"
mkdir -p ${outdir}

for file in com*/ ; do mkdir -p "${outdir}/$file"; done

for path in *.md; do
  out="${outdir}/${path/.md/}.html"
  pandoc -s "${path}" -o "${out}"
done

for path in */*.md; do
  out="${outdir}/${path/.md/}.html"
  pandoc -s "${path}" -o "${out}"
done
