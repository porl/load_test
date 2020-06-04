#!/bin/bash

# Get script location (Linux only for now, OSX may work with GNU coreutils installed)
DIR=$(dirname "$(readlink -f "$0")")/include

cd $DIR # Make sure we are in the correct directory

# update .env file with correct uid/gid
cat > .env << EOF
USER_ID=`id -u`
GROUP_ID=`id -g`
EOF

docker-compose up --build
