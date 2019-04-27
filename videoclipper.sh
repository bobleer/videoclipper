#! /bin/bash
echo 'Made by Bob [https://github.com/bobleer/videoclipper]'
echo 
cd ~/downloads/
mkdir clips
cd ./clips/

echo '将要剪裁的视频拖入Terminal框'
read videopath
echo '输入开始时间(小时:分钟:秒 eg. 00:27:40)'
read startpoint
echo '输入结束时间(小时:分钟:秒 eg. 00:29:10)'
read endpoint
echo '输入要导出的文件名(eg. 425)'
read outfilename

exten=${videopath##*.}

ffmpeg -i $videopath -vcodec copy -acodec copy -ss $startpoint -to $endpoint $outfilename.$exten

open ./
