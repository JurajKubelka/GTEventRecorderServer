#!/bin/bash
# Starting script for gc.dcc.uchile.cl server
# It runs GTEventRecorderServer server that listen on 8080 port in order to receive and store collected data.
# It should be copied to $HOME/bin directory.

# There are some problems with locale. This is a fix.
export LC_ALL=C

WORKDIR="/home/jkubelka/gt-event-recorder-server/GTEventRecorderServer/scripts"
CMD="./build.sh"

cd "$WORKDIR" || exit 2

LOG="/home/jkubelka/logs/gt-event-recorder-server.log"

$CMD -r 50+vm GTEventRecorderServer >> "$LOG" 2>&1
