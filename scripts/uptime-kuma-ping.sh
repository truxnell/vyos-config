#!/bin/bash

# Uptime kuma script
# Courtesy of:
# https://zacwe.st/2023/01/28/uptime-kuma-push/

if [ $# -lt 1 ]; then
	echo "Usage: $0 <push_token> [command...]" >&2
	exit 1
fi

push_token=$1
shift
start_time=$(date -u +%s%3N)

if [ $# -gt 0 ]; then
	"$@" || exit
fi

end_time=$(date -u +%s%3N)
duration=$(($end_time - $start_time))

result=$(curl --fail --no-progress-meter --retry 3 "https://status.voltaicforge.com/api/push/$push_token?ping=$duration" 2>&1)
if [ $? -ne 0 ]; then
	echo "Failed: $result" >&2
fi
