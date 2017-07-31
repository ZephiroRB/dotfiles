#!/bin/sh

for file in `ls -d .??*`; do
  
  target="$HOME/$file"
  if [ -L "$target" -o ! -a "$target" ]; then
    rm -vf $target
  else
    echo "$target exists but is not a symlink."
  fi

done
