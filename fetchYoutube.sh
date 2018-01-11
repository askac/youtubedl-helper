#!/bin/sh

if [ "x$1" = "x" ];then
echo "Usage: $0 <YOUTUBE VIDEO ID>"
exit
fi

youtube-dl --no-check-certificate -F "https://www.youtube.com/watch?v=${1}"

echo -n "Select Video: "
read vdoId

echo -n "Select Audio: "
read audId

if [ "x${vdoId}" != "x" ];then
if [ "x${audId}" != "x" ];then
youtube-dl --no-check-certificate --no-playlist -f ${vdoId}+${audId} --merge-output-format mp4 "https://www.youtube.com/watch?v=${1}"
fi
fi