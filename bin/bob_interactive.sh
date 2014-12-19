#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z $1 ]; then
    echo "usage: bob-interactive-sh image"
    exit 1
fi

REPO=$(realpath -s $SCRIPT_DIR/../dock/${1/\//\/images\/})
if [ ! -d $REPO ]; then
    echo "error: can't find ${REPO}"
    exit 1
fi

echo -e "starting interactive build container with bb-dock/${1} mounted as /config..\n\nto start the build run: build-root ${1}\n"

docker run -it --rm --hostname bob-$1 \
    -v $(realpath -s $SCRIPT_DIR/../tmp/distfiles):/distfiles \
    -v $(realpath -s $SCRIPT_DIR/../tmp/packages):/packages \
    -v ${REPO}:/config \
    "gentoobb/bob:latest"
