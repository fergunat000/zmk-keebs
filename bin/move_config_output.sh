#!/usr/bin/env bash

TIMESTAMP=$(date +"%Y%m%d%H%M")

# this script moves the files and pushes up a new commit with a timestamp
# cannot be called from CI, must have github credentials setup
#
# git config --global user.name ""
# git config --global user.email ""
#
# the easiest way to setup git on a new computer can be found here:
# https://docs.github.com/en/get-started/getting-started-with-git/set-up-git
#
# I prefer the ssh method, but the credentials helper method works as well

cp -R config/. app/board/shields/southpaw75
git pull --ff-only
git add .
git commit -m "$TIMESTAMP-NEW-BOARD-BUILT"
git push

