ifuse $HOME/iPhone

cd $HOME/Videos/ || exit

mkdir "temp_dir"

for f in *.MOV; do ffmpeg -i "${f}" "${f%%.*}_c.mp4"; done
for f in *.mp4; do ffmpeg -i "${f}" "${f%%.*}_c.mp4"; done

rmdir "temp_dir"

fusemount -u $HOME/iPhone