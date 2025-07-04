#!/bin/bash
set +u
CONFIG_PATH=/data/options.json

EUFY_WS_PORT=$(jq --raw-output ".eufy_security_ws_port" $CONFIG_PATH)
EUFY_DEVICE_SERIAL=$(jq --raw-output ".eufy_device_serial" $CONFIG_PATH)

echo "Starting EufyP2PStream. eufy_security_ws_port is $EUFY_WS_PORT eufy_security_ws_serialnumer is $EUFY_DEVICE_SERIAL"
python3 -u /eufyp2pstream.py $EUFY_WS_PORT $EUFY_DEVICE_SERIAL
echo "Exited with code $?"
