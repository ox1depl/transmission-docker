#!/bin/sh -e

TARGET=localhost
CURL_OPTS="--connect-timeout 15 --silent --show-error --fail"

SESSION_HEADER=$(curl --connect-timeout 15 --silent --anyauth --user admin:Rowerek~~ http://${TARGET}:9091/transmission/rpc | sed 's/.*<code>//g;s/<\/code>.*//g')

curl ${CURL_OPTS} --anyauth --user ${USER}:${PASS} --header ${SESSION_HEADER} http://${TARGET}:9091/transmission/rpc -d "{\"method\":\"session-stats\"}" >/dev/null
