FROM linuxserver/transmission:latest

COPY root/ /

HEALTHCHECK --interval=5s --timeout=2s --retries=20 CMD /healthcheck.sh || exit 1
