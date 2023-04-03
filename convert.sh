#!/usr/bin/bash
echo "Start converting gif|mp4 into png sets ...."
find . -type  f -regex '.*\.\(mp4\|gif\)' -print0 | 
    while IFS= read -r -d '' line; do 
        file="${line##*/}"
        path="${line%/*}"
        file_png="${file%.*}.png"
        new_path="$path/png_sets"
        mkdir -p $new_path
        echo "Converting file: $line -> $new_path/$file_png"
        convert -coalesce "$line" "$new_path/$file_png";
    done