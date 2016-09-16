#!/bin/bash
for i in *.png; do
  convert -resize 600x600 -antialias -quality 00 -colors 256 -verbose $i tmp-$i
  pngcrush -rem allb -brute -reduce tmp-$i optim-$i
  rm tmp-$i
done
