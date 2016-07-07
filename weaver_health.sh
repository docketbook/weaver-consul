#!/bin/sh
export IP_PRIVATE=$(ip addr show eth0 | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}')
curl -f -s http://$IP_PRIVATE:8080 > /dev/null
exit $?