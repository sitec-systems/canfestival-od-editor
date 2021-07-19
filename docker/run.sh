#!/bin/sh



set -x

if [ $# -ge 1 ]; then
    oddir=$1
else
    oddir=$(pwd)/..
fi

# Before you can run it, you need to allow local connections to the xserver
xhost +local:$(whoami)

docker run -e DISPLAY=:0 -v $oddir:/oddir -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v $(pwd)/..:/root -it --rm  lehmrob/od-editor
