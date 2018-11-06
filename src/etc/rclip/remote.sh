#!/bin/bash
# @Copyright (c) 2018 Xvezda <https://xvezda.com>


# Make sure only one script running
# https://stackoverflow.com/a/731634
if ! mkdir /tmp/remote.script.lock 2>/dev/null; then
    exit 1
fi

# Exit loop if there is no ssh connection process
while [ -n "$(ps -a | awk '{print $4}' | grep ssh)" ]; do
    nc -l localhost 7331 | base64 -D | pbcopy
done

rmdir /tmp/remote.script.lock
