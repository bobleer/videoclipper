cd ~/downloads/
mkdir marked
cd ./marked/

echo '将要剪裁的视频拖入Terminal框'
read videopath
add='[Marked]'

ffmpeg -i "$videopath" -c:a copy -vf "movie=logo.png [watermark]; [in][watermark] overlay=main_w-overlay_w-10:main_h-overlay_h-10 [out]" "$add${videopath##*/}"

open ./