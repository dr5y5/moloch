#!/bin/sh
# Add to /etc/inittab something like 
# v1:2345:respawn:/home/moloch/viewer/run.sh
cd /home/moloch/capture
/bin/rm -f OUT.old
/bin/mv OUT OUT.old
export NODE_ENV=production 
exec /usr/local/bin/node viewer.js -c ../config.ini > OUT 2>&1
