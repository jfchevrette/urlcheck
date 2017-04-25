#!/bin/bash

URL=${URL:-}
SLEEP=${SLEEP:-5}
TIMEOUT=${TIMEOUT:-5}

if [[ -z "$URL" ]]; then echo "URL not specified"; exit 1; fi

echo "### urlcheck"
echo "# URL $URL"
echo "# TIMEOUT: $TIMEOUT"
echo "# SLEEP: $SLEEP"

while true; do
    if ! curl -kfsS --connect-timeout "$TIMEOUT" "$URL" > /dev/null
    then
        echo "$(date) Error fetching URL $URL."
    else
        echo "$(date) OK"
    fi
    sleep "$SLEEP"
done
