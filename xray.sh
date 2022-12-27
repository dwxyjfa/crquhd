#!/bin/sh
if [ ! -f UUID ]; then
  UUID="21bc20bc-1602-4005-9bc9-91549fff7941"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

