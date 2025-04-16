#!/bin/sh
set -x

if [ $# -ge 1 ]; then
    oddir=$1
else
    oddir=$(pwd)/..
fi

# Before you can run it, you need to allow local connections to the xserver
xhost +local:$(whoami)
xhost +SI:localuser:$(whoami)

if [ ! -e $HOME/.Xauthority ]; then
    touch ~/.Xauthority
    xauth generate $DISPLAY . trusted
fi

# podman run -it -u 0 -e DISPLAY="$DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v /home/robert/usr/src/canfestival-od-editor/docker/..:/oddir -v /home/robert/usr/src/canfestival-od-editor/docker/..:/root -it --rm lehmrob/od-editor

# podman run -u 0 -e DISPLAY="$DISPLAY" -v $oddir:/oddir -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v $(pwd)/..:/root -it --rm  lehmrob/od-editor
podman run -it --rm \
    -e DISPLAY="$DISPLAY" \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $oddir:/oddir \
    -v $(pwd)/..:/root \
    --network=host \
     lehmrob/od-editor \
     /bin/bash

