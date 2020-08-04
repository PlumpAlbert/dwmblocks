#!/bin/sh


blocks="$(awk -F, '/^\s*\{/ {print $2 "," substr($4, 1, length($4) - 1)}' config.h)"

echo "$blocks" | while read -r line; do
  name="$(echo "$line" | grep -oP '/dwmblocks/scripts/\K\S+')"
  code=$(echo "$line" | cut -d, -f2 | tr -d '[:space:]')
  [ -z $name ] && continue
  printf "%s\t%d\n" "$name" $code
done
