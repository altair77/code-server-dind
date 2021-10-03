#!/bin/sh

/usr/local/bin/dockerd-entrypoint.sh &

exec code-server /work
