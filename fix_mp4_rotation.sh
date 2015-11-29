for x in *mp4; do
  echo "Fixing $x, saving to temp $x-ffmpeg-temp.mp4"
  echo "(Running ffmpeg -loglevel quiet -i $x -c copy -metadata:s:v:0 rotate=0 $x-ffmpeg-temp.mp4";
  ffmpeg -loglevel quiet -i "$x" -c copy -metadata:s:v:0 rotate=0 "$x-ffmpeg-temp.mp4";
  echo "Removing temp file, overwriting the original"
  mv "$x-ffmpeg-temp.mp4" "$x";
done
