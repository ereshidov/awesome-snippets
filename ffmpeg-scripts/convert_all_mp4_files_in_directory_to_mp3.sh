#!bin/bash

for file in *.mp4 do
  output="${file%.*}.mp3"
  ffmpeg -i "$file" -vn -acodec libmp3lame -ab 192k "$output"
  echo "Converted $file -> $output"
done
