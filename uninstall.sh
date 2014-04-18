#!/bin/sh

for file in `ls -d .??*`; do
  if [ "$file" != ".gitmodules" ]
  then
    target="$HOME/$file"
    if [ -L "$target" -o ! -a "$target" ]; then
      rm -vf $target
    else
      echo "$target exists but is not a symlink."
    fi
  fi
done
