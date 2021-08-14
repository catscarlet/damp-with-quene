#!/bin/bash
umask 002
printenv | sed 's/^\(.*\)$/export "\1"/g' > /root/project_env.sh
chmod a+x /root/project_env.sh
cron -f
