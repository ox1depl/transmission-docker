#!/bin/sh -e

TARGET=localhost
CURL_OPTS="--connect-timeout 15 --silent --show-error --fail"

curl ${CURL_OPTS} "http://${TARGET}:9091" >/dev/null
