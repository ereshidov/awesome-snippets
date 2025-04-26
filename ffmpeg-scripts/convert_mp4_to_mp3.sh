#!/bin/bash

if [-z "$1"]; then
  echo "Usage $0 <input_file.mp4>"
  exit 1
fi

input_file="$1"
output_file="${input_file%.*}.mp3"

ffmpeg -i "$input_file" -vn -acodec libmp3lame -ab 192k "$output_file"

echo "Done! Output file: $output_file"
